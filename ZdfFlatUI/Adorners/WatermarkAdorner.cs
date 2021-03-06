﻿using System;
using System.Globalization;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Media;

namespace ZdfFlatUI
{
    /// <summary>
    /// 水印显示方式
    /// </summary>
    public enum EnumWatermarkShowMode
    {
        /// <summary>
        /// 当文本框为空时就显示水印，不管该文本框有没有获得焦点
        /// </summary>
        VisibleWhenIsEmtpy,
        /// <summary>
        /// 当文本框失去焦点且文本框没有内容时显示水印
        /// </summary>
        VisibleWhenLostFocusAndEmtpy,
    }

    /// <summary>
    /// TextBox文本框通用水印
    /// </summary>
    /// <remarks>add by zhidf 2017.9.3</remarks>
    public class WatermarkAdorner : Adorner
    {
        private TextBox adornedTextBox;
        private VisualCollection _visuals;
        private TextBlock textBlock;
        private EnumWatermarkShowMode showModel;

        #region Watermark
        public static string GetWatermark(DependencyObject obj)
        {
            return (string)obj.GetValue(WatermarkProperty);
        }

        public static void SetWatermark(DependencyObject obj, string value)
        {
            obj.SetValue(WatermarkProperty, value);
        }

        public static readonly DependencyProperty WatermarkProperty =
            DependencyProperty.RegisterAttached("Watermark", typeof(string), typeof(WatermarkAdorner)
                , new PropertyMetadata(string.Empty, WatermarkChangedCallBack));
        #endregion

        #region WatermarkShowMode

        public static EnumWatermarkShowMode GetWatermarkShowMode(DependencyObject obj)
        {
            return (EnumWatermarkShowMode)obj.GetValue(WatermarkShowModeProperty);
        }

        public static void SetWatermarkShowMode(DependencyObject obj, EnumWatermarkShowMode value)
        {
            obj.SetValue(WatermarkShowModeProperty, value);
        }
        
        public static readonly DependencyProperty WatermarkShowModeProperty =
            DependencyProperty.RegisterAttached("WatermarkShowMode", typeof(EnumWatermarkShowMode), typeof(WatermarkAdorner), new PropertyMetadata(EnumWatermarkShowMode.VisibleWhenLostFocusAndEmtpy));

        #endregion

        private static void WatermarkChangedCallBack(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            try
            {
                var element = d as FrameworkElement;
                if (element != null)
                {
                    var adornerLayer = AdornerLayer.GetAdornerLayer(element);

                    if (adornerLayer != null)
                    {
                        adornerLayer.Add(new WatermarkAdorner(element as UIElement));
                    }
                    else
                    {
                        //layer为null，说明还未load过（整个可视化树中没有装饰层的情况不考虑）
                        //在控件的loaded事件内生成装饰件
                        element.Loaded += (s1, e1) => {
                            var adorner = new WatermarkAdorner(element);
                            var v = AdornerLayer.GetAdornerLayer(element);
                            if(v != null)
                            {
                                v.Add(adorner);
                            }
                        };
                    }
                }
            }
            catch (Exception)
            {
                
            }
        }

        public WatermarkAdorner(UIElement adornedElement) : base(adornedElement)
        {
            if (adornedElement is TextBox)
            {
                adornedTextBox = adornedElement as TextBox;
                adornedTextBox.TextChanged += (s1, e1) => 
                {
                    this.SetWatermarkVisible(true);
                };
                adornedTextBox.GotFocus += (s1, e1) => {
                    this.SetWatermarkVisible(true);
                };
                adornedTextBox.LostFocus += (s1, e1) => 
                {
                    this.SetWatermarkVisible(false);
                };

                _visuals = new VisualCollection(this);
                
                textBlock = new TextBlock()
                {
                    HorizontalAlignment = System.Windows.HorizontalAlignment.Left,
                    VerticalAlignment = System.Windows.VerticalAlignment.Center,
                    Text = WatermarkAdorner.GetWatermark(adornedElement),
                    Foreground = new SolidColorBrush(Color.FromRgb(153, 153, 153)),
                    Margin = new Thickness(5,0,2,0),
                };

                _visuals.Add(textBlock);

                this.showModel = WatermarkAdorner.GetWatermarkShowMode(adornedElement);
            }
            this.IsHitTestVisible = false;
        }

        protected override int VisualChildrenCount
        {
            get
            {
                return _visuals.Count;
            }
        }

        protected override Visual GetVisualChild(int index)
        {
            return _visuals[index];
        }

        protected override Size MeasureOverride(Size constraint)
        {
            return base.MeasureOverride(constraint);
        }

        protected override Size ArrangeOverride(Size finalSize)
        {
            textBlock.Arrange(new Rect(finalSize));

            return base.ArrangeOverride(finalSize);
        }

        private void SetWatermarkVisible(bool isFocus)
        {
            switch (this.showModel)
            {
                case EnumWatermarkShowMode.VisibleWhenIsEmtpy:
                    if (string.IsNullOrEmpty(this.adornedTextBox.Text))
                    {
                        this.textBlock.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        this.textBlock.Visibility = Visibility.Collapsed;
                    }
                    break;
                case EnumWatermarkShowMode.VisibleWhenLostFocusAndEmtpy:
                    if(!isFocus && string.IsNullOrEmpty(this.adornedTextBox.Text))
                    {
                        this.textBlock.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        this.textBlock.Visibility = Visibility.Collapsed;
                    }
                    break;
                default:
                    break;
            }
        }
    }
}
