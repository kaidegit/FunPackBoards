/* 
 * File:   oled_font.h
 * Author: kai
 *
 * Created on April 22, 2021, 5:15 PM
 */

#ifndef OLED_FONT_H
#define	OLED_FONT_H

#ifdef	__cplusplus
extern "C" {
#endif

/************************************6*8???************************************/
const unsigned char F6x8[][6] =
{
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp 0
    { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !  1
    { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "  2
    { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #  3
    { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $  4
    { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %  5
    { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &  6
    { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '  7
    { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (  8
    { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )  9
    { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *  10
    { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +  11
    { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,  12
    { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -  13
    { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .  14
    { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /  15
    { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0  16
    { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1  17
    { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2  18
    { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3  19
    { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4  20
    { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5  21
    { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6  22
    { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7  23
    { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8  24
    { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9  25
    { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :  26
    { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;  27
    { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <  28
    { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =  29
    { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >  30
    { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?  31
    { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @  32
    { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A  33
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B  34
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C  35
    { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D  36
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E  37
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F  38
    { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G  39
    { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H  40
    { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I  41
    { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J  42
    { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K  43
    { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L  44
    { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M  45
    { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N  46
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O  47
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P  48
    { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q  49
    { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R  50
    { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S  51
    { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T  52
    { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U  53
    { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V  54
    { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W  55
    { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X  56
    { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y  57
    { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z  58
    { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [  59
    { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55 60
    { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]  61
    { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^  62
    { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _  63
    { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '  64
    { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a  65
    { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b  66
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c  67
    { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d  68
    { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e  69
    { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f  70
    { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g  71
    { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h  72
    { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i  73
    { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j  74
    { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k  75
    { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l  76
    { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m  77
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n  78
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o  79
    { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p  80
    { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q  81
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r  82
    { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s  83
    { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t  84
    { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u  85
    { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v  86
    { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w  87
    { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x  88
    { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y  89
    { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z  90
    { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
};

/****************************************8*16???************************************/
const unsigned char F8x16[]=
{
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,// 0
  0x00,0x00,0x00,0xF8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x33,0x30,0x00,0x00,0x00,//! 1
  0x00,0x10,0x0C,0x06,0x10,0x0C,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//" 2
  0x40,0xC0,0x78,0x40,0xC0,0x78,0x40,0x00,0x04,0x3F,0x04,0x04,0x3F,0x04,0x04,0x00,//# 3
  0x00,0x70,0x88,0xFC,0x08,0x30,0x00,0x00,0x00,0x18,0x20,0xFF,0x21,0x1E,0x00,0x00,//$ 4
  0xF0,0x08,0xF0,0x00,0xE0,0x18,0x00,0x00,0x00,0x21,0x1C,0x03,0x1E,0x21,0x1E,0x00,//% 5
  0x00,0xF0,0x08,0x88,0x70,0x00,0x00,0x00,0x1E,0x21,0x23,0x24,0x19,0x27,0x21,0x10,//& 6
  0x10,0x16,0x0E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//' 7
  0x00,0x00,0x00,0xE0,0x18,0x04,0x02,0x00,0x00,0x00,0x00,0x07,0x18,0x20,0x40,0x00,//( 8
  0x00,0x02,0x04,0x18,0xE0,0x00,0x00,0x00,0x00,0x40,0x20,0x18,0x07,0x00,0x00,0x00,//) 9
  0x40,0x40,0x80,0xF0,0x80,0x40,0x40,0x00,0x02,0x02,0x01,0x0F,0x01,0x02,0x02,0x00,//* 10
  0x00,0x00,0x00,0xF0,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x1F,0x01,0x01,0x01,0x00,//+ 11
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xB0,0x70,0x00,0x00,0x00,0x00,0x00,//, 12
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,//- 13
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,0x00,0x00,//. 14
  0x00,0x00,0x00,0x00,0x80,0x60,0x18,0x04,0x00,0x60,0x18,0x06,0x01,0x00,0x00,0x00,/// 15
  0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x0F,0x10,0x20,0x20,0x10,0x0F,0x00,//0 16
  0x00,0x10,0x10,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//1 17
  0x00,0x70,0x08,0x08,0x08,0x88,0x70,0x00,0x00,0x30,0x28,0x24,0x22,0x21,0x30,0x00,//2 18
  0x00,0x30,0x08,0x88,0x88,0x48,0x30,0x00,0x00,0x18,0x20,0x20,0x20,0x11,0x0E,0x00,//3 19
  0x00,0x00,0xC0,0x20,0x10,0xF8,0x00,0x00,0x00,0x07,0x04,0x24,0x24,0x3F,0x24,0x00,//4 20
  0x00,0xF8,0x08,0x88,0x88,0x08,0x08,0x00,0x00,0x19,0x21,0x20,0x20,0x11,0x0E,0x00,//5 21
  0x00,0xE0,0x10,0x88,0x88,0x18,0x00,0x00,0x00,0x0F,0x11,0x20,0x20,0x11,0x0E,0x00,//6 22
  0x00,0x38,0x08,0x08,0xC8,0x38,0x08,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,//7 23
  0x00,0x70,0x88,0x08,0x08,0x88,0x70,0x00,0x00,0x1C,0x22,0x21,0x21,0x22,0x1C,0x00,//8 24
  0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x00,0x31,0x22,0x22,0x11,0x0F,0x00,//9 25
  0x00,0x00,0x00,0xC0,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,//: 26
  0x00,0x00,0x00,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x60,0x00,0x00,0x00,0x00,//; 27
  0x00,0x00,0x80,0x40,0x20,0x10,0x08,0x00,0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x00,//< 28
  0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x00,//= 29
  0x00,0x08,0x10,0x20,0x40,0x80,0x00,0x00,0x00,0x20,0x10,0x08,0x04,0x02,0x01,0x00,//> 30
  0x00,0x70,0x48,0x08,0x08,0x08,0xF0,0x00,0x00,0x00,0x00,0x30,0x36,0x01,0x00,0x00,//? 31
  0xC0,0x30,0xC8,0x28,0xE8,0x10,0xE0,0x00,0x07,0x18,0x27,0x24,0x23,0x14,0x0B,0x00,//@ 32
  0x00,0x00,0xC0,0x38,0xE0,0x00,0x00,0x00,0x20,0x3C,0x23,0x02,0x02,0x27,0x38,0x20,//A 33
  0x08,0xF8,0x88,0x88,0x88,0x70,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x11,0x0E,0x00,//B 34
  0xC0,0x30,0x08,0x08,0x08,0x08,0x38,0x00,0x07,0x18,0x20,0x20,0x20,0x10,0x08,0x00,//C 35
  0x08,0xF8,0x08,0x08,0x08,0x10,0xE0,0x00,0x20,0x3F,0x20,0x20,0x20,0x10,0x0F,0x00,//D 36
  0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x20,0x23,0x20,0x18,0x00,//E 37
  0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x00,0x03,0x00,0x00,0x00,//F 38
  0xC0,0x30,0x08,0x08,0x08,0x38,0x00,0x00,0x07,0x18,0x20,0x20,0x22,0x1E,0x02,0x00,//G 39
  0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x20,0x3F,0x21,0x01,0x01,0x21,0x3F,0x20,//H 40
  0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//I 41
  0x00,0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,0x00,//J 42
  0x08,0xF8,0x88,0xC0,0x28,0x18,0x08,0x00,0x20,0x3F,0x20,0x01,0x26,0x38,0x20,0x00,//K 43
  0x08,0xF8,0x08,0x00,0x00,0x00,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x20,0x30,0x00,//L 44
  0x08,0xF8,0xF8,0x00,0xF8,0xF8,0x08,0x00,0x20,0x3F,0x00,0x3F,0x00,0x3F,0x20,0x00,//M 45
  0x08,0xF8,0x30,0xC0,0x00,0x08,0xF8,0x08,0x20,0x3F,0x20,0x00,0x07,0x18,0x3F,0x00,//N 46
  0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x10,0x20,0x20,0x20,0x10,0x0F,0x00,//O 47
  0x08,0xF8,0x08,0x08,0x08,0x08,0xF0,0x00,0x20,0x3F,0x21,0x01,0x01,0x01,0x00,0x00,//P 48
  0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x18,0x24,0x24,0x38,0x50,0x4F,0x00,//Q 49
  0x08,0xF8,0x88,0x88,0x88,0x88,0x70,0x00,0x20,0x3F,0x20,0x00,0x03,0x0C,0x30,0x20,//R 50
  0x00,0x70,0x88,0x08,0x08,0x08,0x38,0x00,0x00,0x38,0x20,0x21,0x21,0x22,0x1C,0x00,//S 51
  0x18,0x08,0x08,0xF8,0x08,0x08,0x18,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//T 52
  0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//U 53
  0x08,0x78,0x88,0x00,0x00,0xC8,0x38,0x08,0x00,0x00,0x07,0x38,0x0E,0x01,0x00,0x00,//V 54
  0xF8,0x08,0x00,0xF8,0x00,0x08,0xF8,0x00,0x03,0x3C,0x07,0x00,0x07,0x3C,0x03,0x00,//W 55
  0x08,0x18,0x68,0x80,0x80,0x68,0x18,0x08,0x20,0x30,0x2C,0x03,0x03,0x2C,0x30,0x20,//X 56
  0x08,0x38,0xC8,0x00,0xC8,0x38,0x08,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//Y 57
  0x10,0x08,0x08,0x08,0xC8,0x38,0x08,0x00,0x20,0x38,0x26,0x21,0x20,0x20,0x18,0x00,//Z 58
  0x00,0x00,0x00,0xFE,0x02,0x02,0x02,0x00,0x00,0x00,0x00,0x7F,0x40,0x40,0x40,0x00,//[ 59
  0x00,0x0C,0x30,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x06,0x38,0xC0,0x00,//\ 60
  0x00,0x02,0x02,0x02,0xFE,0x00,0x00,0x00,0x00,0x40,0x40,0x40,0x7F,0x00,0x00,0x00,//] 61
  0x00,0x00,0x04,0x02,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//^ 62
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,//_ 63
  0x00,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//` 64
  0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x19,0x24,0x22,0x22,0x22,0x3F,0x20,//a 65
  0x08,0xF8,0x00,0x80,0x80,0x00,0x00,0x00,0x00,0x3F,0x11,0x20,0x20,0x11,0x0E,0x00,//b 66
  0x00,0x00,0x00,0x80,0x80,0x80,0x00,0x00,0x00,0x0E,0x11,0x20,0x20,0x20,0x11,0x00,//c 67
  0x00,0x00,0x00,0x80,0x80,0x88,0xF8,0x00,0x00,0x0E,0x11,0x20,0x20,0x10,0x3F,0x20,//d 68
  0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x22,0x22,0x22,0x22,0x13,0x00,//e 69
  0x00,0x80,0x80,0xF0,0x88,0x88,0x88,0x18,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//f 70
  0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x6B,0x94,0x94,0x94,0x93,0x60,0x00,//g 71
  0x08,0xF8,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//h 72
  0x00,0x80,0x98,0x98,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//i 73
  0x00,0x00,0x00,0x80,0x98,0x98,0x00,0x00,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,//j 74
  0x08,0xF8,0x00,0x00,0x80,0x80,0x80,0x00,0x20,0x3F,0x24,0x02,0x2D,0x30,0x20,0x00,//k 75
  0x00,0x08,0x08,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//l 76
  0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x20,0x3F,0x20,0x00,0x3F,0x20,0x00,0x3F,//m 77
  0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//n 78
  0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//o 79
  0x80,0x80,0x00,0x80,0x80,0x00,0x00,0x00,0x80,0xFF,0xA1,0x20,0x20,0x11,0x0E,0x00,//p 80
  0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x0E,0x11,0x20,0x20,0xA0,0xFF,0x80,//q 81
  0x80,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x20,0x20,0x3F,0x21,0x20,0x00,0x01,0x00,//r 82
  0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x33,0x24,0x24,0x24,0x24,0x19,0x00,//s 83
  0x00,0x80,0x80,0xE0,0x80,0x80,0x00,0x00,0x00,0x00,0x00,0x1F,0x20,0x20,0x00,0x00,//t 84
  0x80,0x80,0x00,0x00,0x00,0x80,0x80,0x00,0x00,0x1F,0x20,0x20,0x20,0x10,0x3F,0x20,//u 85
  0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x00,0x01,0x0E,0x30,0x08,0x06,0x01,0x00,//v 86
  0x80,0x80,0x00,0x80,0x00,0x80,0x80,0x80,0x0F,0x30,0x0C,0x03,0x0C,0x30,0x0F,0x00,//w 87
  0x00,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x31,0x2E,0x0E,0x31,0x20,0x00,//x 88
  0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x80,0x81,0x8E,0x70,0x18,0x06,0x01,0x00,//y 89
  0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x21,0x30,0x2C,0x22,0x21,0x30,0x00,//z 90
  0x00,0x00,0x00,0x00,0x80,0x7C,0x02,0x02,0x00,0x00,0x00,0x00,0x00,0x3F,0x40,0x40,//{ 91
  0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,//| 92
  0x00,0x02,0x02,0x7C,0x80,0x00,0x00,0x00,0x00,0x40,0x40,0x3F,0x00,0x00,0x00,0x00,//} 93
  0x00,0x06,0x01,0x01,0x02,0x02,0x04,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//~ 94
};

#ifdef	__cplusplus
}
#endif

#endif	/* OLED_FONT_H */

