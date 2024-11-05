-- Color Lib for GTA5
-- 0.13b1
local colors_lib = {}

colors_lib.modded = {{"Indian Red", "#CD5C5C", {205, 92, 92}}, {"Wild Watermelon", "#F9526B", {249, 82, 107}},
                     {"Light Coral", "#F08080", {240, 128, 128}}, {"Salmon", "#FA8072", {250, 128, 114}},
                     {"Dark Salmon", "#E9967A", {233, 150, 122}}, {"Light Salmon", "#FFA07A", {255, 160, 122}},
                     {"Crimson", "#DC143C", {220, 20, 60}}, {"Red", "#FF0000", {255, 0, 0}},
                     {"Fire Brick", "#B22222", {178, 34, 34}}, {"Dark Red", "#8B0000", {139, 0, 0}},
                     {"Flamingo Pink", "#FF66FF", {255, 102, 255}}, {"Shocking Pink", "#FC0FC0", {252, 15, 192}},
                     {"Bubble Gum", "#FFC1CC", {255, 193, 204}}, {"Pink", "#FFC0CB", {255, 192, 203}},
                     {"Light Pink", "#FFB6C1", {255, 182, 193}}, {"Hot Pink", "#FF69B4", {255, 105, 180}},
                     {"Deep Pink", "#FF1493", {255, 20, 147}}, {"Medium Violet Red", "#C71585", {199, 21, 133}},
                     {"Pale Violet Red", "#DB7093", {219, 112, 147}}, {"Light Salmon", "#FFA07A", {255, 160, 122}},
                     {"Coral", "#FF7F50", {255, 127, 80}}, {"Tomato", "#FF6347", {255, 99, 71}},
                     {"Orange Red", "#FF4500", {255, 69, 0}}, {"Dark Orange", "#FF8C00", {255, 140, 0}},
                     {"Pumpkin", "#FF6811", {255, 104, 17}}, {"Orange", "#FFA500", {255, 165, 0}},
                     {"Orange Circuit", "#FFBF00", {255, 191, 0}}, {"Neon Carrot", "#FF9933", {255, 153, 51}},
                     {"Atomic Tangerine", "#FF9968", {255, 153, 104}}, {"Sunglow", "#FFCC33", {255, 204, 51}},
                     {"Gold", "#FFD700", {255, 215, 0}}, {"Fluoresent Yellow", "#CCFF00", {204, 255, 0}},
                     {"Chartreuse Yellow", "#DFFF00", {223, 255, 0}}, {"Lemon", "#FDE910", {253, 255, 16}},
                     {"Lemon-Lime", "#E3FF00", {227, 255, 0}}, {"Lemon Glacier", "#FDFF00", {253, 255, 0}},
                     {"Yellow", "#FFFF00", {255, 255, 0}}, {"Daffodil", "#FFFF31", {255, 255, 49}},
                     {"Electric Yellow", "#FFFF33", {255, 255, 51}}, {"Lemon Yellow", "#FFF44F", {255, 244, 79}},
                     {"Laser Lemon/Unmellow Yellow", "#FFFF66", {255, 255, 102}},
                     {"Canary", "#FFFFB2", {255, 255, 178}}, {"Light Yellow", "#FFFFE0", {255, 255, 224}},
                     {"Lemon Chiffon", "#FFFACD", {255, 250, 205}},
                     {"LightGoldenrodYellow", "#FAFAD2", {250, 250, 210}}, {"Snow Flurry", "#E4FFD1", {228, 255, 209}},
                     {"Papaya Whip", "#FFEFD5", {255, 239, 213}}, {"Moccasin", "#FFE4B5", {255, 228, 181}},
                     {"Peach Puff", "#FFDAB9", {255, 218, 185}}, {"Pale Goldenrod", "#EEE8AA", {238, 232, 170}},
                     {"Khaki", "#F0E68C", {240, 230, 140}}, {"Dark Khaki", "#BDB76B", {189, 183, 107}},
                     {"Lavender", "#E6E6FA", {230, 230, 250}}, {"Thistle", "#D8BFD8", {216, 191, 216}},
                     {"Plum", "#DDA0DD", {221, 160, 221}}, {"Violet", "#EE82EE", {238, 130, 238}},
                     {"Orchid", "#DA70D6", {218, 112, 214}}, {"Fuchsia", "#FF00FF", {255, 0, 255}},
                     {"Magenta", "#FF00FF", {255, 0, 255}}, {"Medium Orchid", "#BA55D3", {186, 85, 211}},
                     {"Medium Purple", "#9370DB", {147, 112, 219}}, {"Blue Violet", "#8A2BE2", {138, 43, 226}},
                     {"Dark Violet", "#9400D3", {148, 0, 211}}, {"Dark Orchid", "#9932CC", {153, 50, 204}},
                     {"Dark Magenta", "#8B008B", {139, 0, 139}}, {"Purple", "#800080", {128, 0, 128}},
                     {"Indigo", "#4B0082", {75, 0, 130}}, {"Slate Blue", "#6A5ACD", {106, 90, 205}},
                     {"Dark Slate Blue", "#483D8B", {72, 61, 139}}, {"Medium Slate Blue", "#7B68EE", {123, 104, 238}},
                     {"Cornsilk", "#FFF8DC", {255, 248, 220}}, {"Blanched Almond", "#FFEBCD", {255, 235, 205}},
                     {"Bisque", "#FFE4C4", {255, 228, 196}}, {"Navajo White", "#FFDEAD", {255, 222, 173}},
                     {"Wheat", "#F5DEB3", {245, 222, 179}}, {"Desert Sand", "#EDC9AF", {237, 201, 175}},
                     {"Burly Wood", "#DEB887", {222, 184, 135}}, {"Tan", "#D2B48C", {210, 180, 140}},
                     {"Rosy Brown", "#BC8F8F", {188, 143, 143}}, {"Sandy Brown", "#F4A460", {244, 164, 96}},
                     {"Goldenrod", "#DAA520", {218, 165, 32}}, {"Dark Goldenrod", "#B8860B", {184, 134, 11}},
                     {"Peru", "#CD853F", {205, 133, 63}}, {"Chocolate", "#D2691E", {210, 105, 30}},
                     {"Fuzzy Wuzzy Brown", "#C45655", {196, 86, 85}}, {"Saddle Brown", "#8B4513", {139, 69, 19}},
                     {"Sienna", "#A0522D", {160, 82, 45}}, {"Brown", "#A52A2A", {165, 42, 42}},
                     {"Maroon", "#800000", {128, 0, 0}}, {"Frosted Mint", "#DBFFF8", {219, 255, 248}},
                     {"Snowy Mint", "#D6FFDB", {214, 255, 219}}, {"Paris Daisy", "#FFF46E", {255, 244, 110}},
                     {"Electric Lime", "#CCFF00", {204, 255, 0}}, {"Green Yellow", "#ADFF2F", {173, 255, 47}},
                     {"Chartreuse", "#7FFF00", {127, 255, 0}}, {"Lawn Green", "#7CFC00", {124, 252, 0}},
                     {"Lime", "#00FF00", {0, 255, 0}}, {"Lime Green", "#32CD32", {50, 205, 50}},
                     {"Pale Green", "#98FB98", {152, 251, 152}}, {"Light Green", "#90EE90", {144, 238, 144}},
                     {"Medium Spring Green", "#00FA9A", {0, 250, 154}}, {"Spring Green", "#00FF7F", {0, 255, 127}},
                     {"Medium Sea Green", "#3CB371", {60, 179, 113}}, {"Sea Green", "#2E8B57", {46, 139, 87}},
                     {"Forest Green", "#228B22", {34, 139, 34}}, {"Green", "#008000", {0, 128, 0}},
                     {"Dark Green", "#006400", {0, 100, 0}}, {"Yellow Green", "#9ACD32", {154, 205, 50}},
                     {"Olive Drab", "#6B8E23", {107, 142, 35}}, {"Olive", "#808000", {128, 128, 0}},
                     {"Dark Olive Green", "#556B2F", {85, 107, 47}}, {"Medium Aquamarine", "#66CDAA", {102, 205, 170}},
                     {"Dark Sea Green", "#8FBC8F", {143, 188, 143}}, {"Light Sea Green", "#20B2AA", {32, 178, 170}},
                     {"Dark Cyan", "#008B8B", {0, 139, 139}}, {"Teal", "#008080", {0, 128, 128}},
                     {"Aqua", "#00FFFF", {0, 255, 255}}, {"Cyan", "#00FFFF", {0, 255, 255}},
                     {"Aero Blue", "#C9FFE5", {201, 255, 229}}, {"Light Cyan", "#E0FFFF", {224, 255, 255}},
                     {"Light Rainshower", "#B2FFE2", {178, 255, 226}}, {"Rainshower", "#A8FFE0", {168, 255, 224}},
                     {"Pale Turquoise", "#AFEEEE", {175, 238, 238}}, {"Aquamarine", "#7FFFD4", {127, 255, 212}},
                     {"Turquoise", "#40E0D0", {64, 224, 208}}, {"Medium Turquoise", "#48D1CC", {72, 209, 204}},
                     {"Dark Turquoise", "#00CED1", {0, 206, 209}}, {"Cadet Blue", "#5F9EA0", {95, 158, 160}},
                     {"Steel Blue", "#4682B4", {70, 130, 180}}, {"Light Steel Blue", "#B0C4DE", {176, 196, 222}},
                     {"Powder Blue", "#B0E0E6", {176, 224, 230}}, {"Light Blue", "#ADD8E6", {173, 216, 230}},
                     {"Sky Blue", "#87CEEB", {135, 206, 235}}, {"Light Sky Blue", "#87CEFA", {135, 206, 250}},
                     {"Deep Sky Blue", "#00BFFF", {0, 191, 255}}, {"Dodger Blue", "#1E90FF", {30, 144, 255}},
                     {"Fuchsia Blue", "#7458C1", {122, 88, 193}}, {"Cornflower Blue", "#6495ED", {100, 149, 237}},
                     {"Royal Blue", "#4169E1", {65, 105, 225}}, {"Blue", "#0000FF", {0, 0, 255}},
                     {"Medium Blue", "#0000CD", {0, 0, 205}}, {"Dark Blue", "#00008B", {0, 0, 139}},
                     {"Navy", "#000080", {0, 0, 128}}, {"Midnight Blue", "#191970", {25, 25, 112}},
                     {"White", "#FFFFFF", {255, 255, 255}}, {"Snow", "#FFFAFA", {255, 250, 250}},
                     {"Honeydew", "#F0FFF0", {240, 255, 240}}, {"Mint Cream", "#F5FFFA", {245, 255, 250}},
                     {"Azure", "#F0FFFF", {240, 255, 255}}, {"Alice Blue", "#F0F8FF", {240, 248, 255}},
                     {"Ghost White", "#F8F8FF", {248, 248, 255}}, {"White Smoke", "#F5F5F5", {245, 245, 245}},
                     {"Seashell", "#FFF5EE", {255, 245, 238}}, {"Beige", "#F5F5DC", {245, 245, 220}},
                     {"Old Lace", "#FDF5E6", {253, 245, 230}}, {"Floral White", "#FFFAF0", {255, 250, 240}},
                     {"Ivory", "#FFFFF0", {255, 255, 240}}, {"Antique White", "#FAEBD7", {250, 235, 215}},
                     {"Linen", "#FAF0E6", {250, 240, 230}}, {"Lavender Blush", "#FFF0F5", {255, 240, 245}},
                     {"Misty Rose", "#FFE4E1", {255, 228, 225}}, {"Platinum", "#E5E4E2", {229, 228, 226}},
                     {"Gainsboro", "#DCDCDC", {220, 220, 220}}, {"Light Grey", "#D3D3D3", {211, 211, 211}},
                     {"Silver", "#C0C0C0", {192, 192, 192}}, {"Dark Gray", "#A9A9A9", {169, 169, 169}},
                     {"Gray", "#808080", {128, 128, 128}}, {"Dim Gray", "#696969", {105, 105, 105}},
                     {"Light Slate Gray", "#778899", {119, 136, 153}}, {"Slate Gray", "#708090", {112, 128, 144}},
                     {"Dark Slate Grey", "#2F4F4F", {47, 79, 79}}, {"Black", "#000000", {0, 0, 0}}}

colors_lib.colors_rgb = {
    black = {
        r = 0,
        g = 0,
        b = 1
    },
    blue = {
        r = 0,
        g = 55,
        b = 255
    },
    silver = {
        r = 192,
        g = 192,
        b = 192
    },
    gray = {
        r = 128,
        g = 128,
        b = 128
    },
    green = {
        r = 0,
        g = 128,
        b = 0
    },
    purple = {
        r = 72,
        g = 0,
        b = 255
    },
    red = {
        r = 255,
        g = 0,
        b = 0
    },
    white = {
        r = 255,
        g = 255,
        b = 255
    },
    orange = {
        r = 156,
        g = 63,
        b = 30
    },
    yellow = {
        r = 255,
        g = 255,
        b = 0
    },
    lime = {
        r = 0,
        g = 255,
        b = 0
    },
    maroon = {
        r = 128,
        g = 0,
        b = 0
    },
    olive = {
        r = 128,
        g = 128,
        b = 0
    },
    aqua = {
        r = 0,
        g = 255,
        b = 255
    },
    cyan = {
        r = 0,
        g = 255,
        b = 255
    },
    teal = {
        r = 0,
        g = 128,
        b = 128
    },
    navy = {
        r = 0,
        g = 0,
        b = 128
    },
    magenta = {
        r = 255,
        g = 0,
        b = 255
    },
    fuchsia = {
        r = 255,
        g = 0,
        b = 255
    },
    skyblue = {
        r = 135,
        g = 206,
        b = 235
    },
    hotpink = {
        r = 255,
        g = 20,
        b = 147
    },
    lightpink = {
        r = 255,
        g = 182,
        b = 193
    },
    pink = {
        r = 255,
        g = 192,
        b = 203
    },
    wheat = {
        r = 245,
        g = 222,
        b = 179
    },
    brown = {
        r = 139,
        g = 69,
        b = 19
    },
    tan = {
        r = 210,
        g = 180,
        b = 140
    },
    indigo = {
        r = 75,
        g = 0,
        b = 130
    },
    royalblue = {
        r = 65,
        g = 105,
        b = 225
    },
    limegreen = {
        r = 187,
        g = 255,
        b = 0
    },
    modded = {
        r = 72,
        g = 0,
        b = 255
    },

    kifflom = {
        r = 102,
        g = 144,
        b = 181
    }, -- 6690B5
    invisible = {
        r = 14,
        g = 0,
        b = 14
    },
    brightgold = {
        r = 227,
        g = 190,
        b = 70
    },
    lavared = {
        r = 107,
        g = 11,
        b = 0,
        a = 4
    },
    gold = {
        r = 251,
        g = 184,
        b = 41,
        a = 4
    },
    karbonnic = {
        r = 14,
        g = 0,
        b = 14
    }
    -- chrome = {r=0, 0, g=0, b=5},
}

colors_lib.colors_standard = {{
    index = 0,
    name = "MetallicBlack",
    hex = "#0d1116",
    rgb = {
        r = 13,
        g = 17,
        b = 22
    }
}, {
    index = 1,
    name = "MetallicGraphiteBlack",
    hex = "#1c1d21",
    rgb = {
        r = 28,
        g = 29,
        b = 33
    }
}, {
    index = 2,
    name = "MetallicBlackSteal",
    hex = "#32383d",
    rgb = {
        r = 50,
        g = 56,
        b = 61
    }
}, {
    index = 3,
    name = "MetallicDarkSilver",
    hex = "#454b4f",
    rgb = {
        r = 69,
        g = 75,
        b = 79
    }
}, {
    index = 4,
    name = "MetallicSilver",
    hex = "#999da0",
    rgb = {
        r = 153,
        g = 157,
        b = 160
    }
}, {
    index = 5,
    name = "MetallicBlueSilver",
    hex = "#c2c4c6",
    rgb = {
        r = 194,
        g = 196,
        b = 198
    }
}, {
    index = 6,
    name = "MetallicSteelGray",
    hex = "#979a97",
    rgb = {
        r = 151,
        g = 154,
        b = 151
    }
}, {
    index = 7,
    name = "MetallicShadowSilver",
    hex = "#637380",
    rgb = {
        r = 99,
        g = 115,
        b = 128
    }
}, {
    index = 8,
    name = "MetallicStoneSilver",
    hex = "#63625c",
    rgb = {
        r = 99,
        g = 98,
        b = 92
    }
}, {
    index = 9,
    name = "MetallicMidnightSilver",
    hex = "#3c3f47",
    rgb = {
        r = 60,
        g = 63,
        b = 71
    }
}, {
    index = 10,
    name = "MetallicGunMetal",
    hex = "#444e54",
    rgb = {
        r = 68,
        g = 78,
        b = 84
    }
}, {
    index = 11,
    name = "MetallicAnthraciteGrey",
    hex = "#1d2129",
    rgb = {
        r = 29,
        g = 33,
        b = 41
    }
}, {
    index = 12,
    name = "MatteBlack",
    hex = "#13181f",
    rgb = {
        r = 19,
        g = 24,
        b = 31
    }
}, {
    index = 13,
    name = "MatteGray",
    hex = "#26282a",
    rgb = {
        r = 38,
        g = 40,
        b = 42
    }
}, {
    index = 14,
    name = "MatteLightGrey",
    hex = "#515554",
    rgb = {
        r = 81,
        g = 85,
        b = 84
    }
}, {
    index = 15,
    name = "UtilBlack",
    hex = "#151921",
    rgb = {
        r = 21,
        g = 25,
        b = 33
    }
}, {
    index = 16,
    name = "UtilBlackPoly",
    hex = "#1e2429",
    rgb = {
        r = 30,
        g = 36,
        b = 41
    }
}, {
    index = 17,
    name = "UtilDarksilver",
    hex = "#333a3c",
    rgb = {
        r = 51,
        g = 58,
        b = 60
    }
}, {
    index = 18,
    name = "UtilSilver",
    hex = "#8c9095",
    rgb = {
        r = 140,
        g = 144,
        b = 149
    }
}, {
    index = 19,
    name = "UtilGunMetal",
    hex = "#39434d",
    rgb = {
        r = 57,
        g = 67,
        b = 77
    }
}, {
    index = 20,
    name = "UtilShadowSilver",
    hex = "#506272",
    rgb = {
        r = 80,
        g = 98,
        b = 114
    }
}, {
    index = 21,
    name = "WornBlack",
    hex = "#1e232f",
    rgb = {
        r = 30,
        g = 35,
        b = 47
    }
}, {
    index = 22,
    name = "WornGraphite",
    hex = "#363a3f",
    rgb = {
        r = 54,
        g = 58,
        b = 63
    }
}, {
    index = 23,
    name = "WornSilverGrey",
    hex = "#a0a199",
    rgb = {
        r = 160,
        g = 161,
        b = 153
    }
}, {
    index = 24,
    name = "WornSilver",
    hex = "#d3d3d3",
    rgb = {
        r = 211,
        g = 211,
        b = 211
    }
}, {
    index = 25,
    name = "WornBlueSilver",
    hex = "#b7bfca",
    rgb = {
        r = 183,
        g = 191,
        b = 202
    }
}, {
    index = 26,
    name = "WornShadowSilver",
    hex = "#778794",
    rgb = {
        r = 119,
        g = 135,
        b = 148
    }
}, {
    index = 27,
    name = "MetallicRed",
    hex = "#c00e1a",
    rgb = {
        r = 192,
        g = 14,
        b = 26
    }
}, {
    index = 28,
    name = "MetallicTorinoRed",
    hex = "#da1918",
    rgb = {
        r = 218,
        g = 25,
        b = 24
    }
}, {
    index = 29,
    name = "MetallicFormulaRed",
    hex = "#b6111b",
    rgb = {
        r = 182,
        g = 17,
        b = 27
    }
}, {
    index = 30,
    name = "MetallicBlazeRed",
    hex = "#a51e23",
    rgb = {
        r = 165,
        g = 30,
        b = 35
    }
}, {
    index = 31,
    name = "MetallicGracefulRed",
    hex = "#7b1a22",
    rgb = {
        r = 123,
        g = 26,
        b = 34
    }
}, {
    index = 32,
    name = "MetallicGarnetRed",
    hex = "#8e1b1f",
    rgb = {
        r = 142,
        g = 27,
        b = 31
    }
}, {
    index = 33,
    name = "MetallicDesertRed",
    hex = "#6f1818",
    rgb = {
        r = 111,
        g = 24,
        b = 24
    }
}, {
    index = 34,
    name = "MetallicCabernetRed",
    hex = "#49111d",
    rgb = {
        r = 73,
        g = 17,
        b = 29
    }
}, {
    index = 35,
    name = "MetallicCandyRed",
    hex = "#b60f25",
    rgb = {
        r = 182,
        g = 15,
        b = 37
    }
}, {
    index = 36,
    name = "MetallicSunriseOrange",
    hex = "#d44a17",
    rgb = {
        r = 212,
        g = 74,
        b = 23
    }
}, {
    index = 37,
    name = "MetallicClassicGold",
    hex = "#c2944f",
    rgb = {
        r = 194,
        g = 148,
        b = 79
    }
}, {
    index = 38,
    name = "MetallicOrange",
    hex = "#f78616",
    rgb = {
        r = 247,
        g = 134,
        b = 22
    }
}, {
    index = 39,
    name = "MatteRed",
    hex = "#cf1f21",
    rgb = {
        r = 207,
        g = 31,
        b = 33
    }
}, {
    index = 40,
    name = "MatteDarkRed",
    hex = "#732021",
    rgb = {
        r = 115,
        g = 32,
        b = 33
    }
}, {
    index = 41,
    name = "MatteOrange",
    hex = "#f27d20",
    rgb = {
        r = 242,
        g = 125,
        b = 32
    }
}, {
    index = 42,
    name = "MatteYellow",
    hex = "#ffc91f",
    rgb = {
        r = 255,
        g = 201,
        b = 31
    }
}, {
    index = 43,
    name = "UtilRed",
    hex = "#9c1016",
    rgb = {
        r = 156,
        g = 16,
        b = 22
    }
}, {
    index = 44,
    name = "UtilBrightRed",
    hex = "#de0f18",
    rgb = {
        r = 222,
        g = 15,
        b = 24
    }
}, {
    index = 45,
    name = "UtilGarnetRed",
    hex = "#8f1e17",
    rgb = {
        r = 143,
        g = 30,
        b = 23
    }
}, {
    index = 46,
    name = "WornRed",
    hex = "#a94744",
    rgb = {
        r = 169,
        g = 71,
        b = 68
    }
}, {
    index = 47,
    name = "WornGoldenRed",
    hex = "#b16c51",
    rgb = {
        r = 177,
        g = 108,
        b = 81
    }
}, {
    index = 48,
    name = "WornDarkRed",
    hex = "#371c25",
    rgb = {
        r = 55,
        g = 28,
        b = 37
    }
}, {
    index = 49,
    name = "MetallicDarkGreen",
    hex = "#132428",
    rgb = {
        r = 19,
        g = 36,
        b = 40
    }
}, {
    index = 50,
    name = "MetallicRacingGreen",
    hex = "#122e2b",
    rgb = {
        r = 18,
        g = 46,
        b = 43
    }
}, {
    index = 51,
    name = "MetallicSeaGreen",
    hex = "#12383c",
    rgb = {
        r = 18,
        g = 56,
        b = 60
    }
}, {
    index = 52,
    name = "MetallicOliveGreen",
    hex = "#31423f",
    rgb = {
        r = 49,
        g = 66,
        b = 63
    }
}, {
    index = 53,
    name = "MetallicGreen",
    hex = "#155c2d",
    rgb = {
        r = 21,
        g = 92,
        b = 45
    }
}, {
    index = 54,
    name = "MetallicGasolineBlueGreen",
    hex = "#1b6770",
    rgb = {
        r = 27,
        g = 103,
        b = 112
    }
}, {
    index = 55,
    name = "MatteLimeGreen",
    hex = "#66b81f",
    rgb = {
        r = 102,
        g = 184,
        b = 31
    }
}, {
    index = 56,
    name = "UtilDarkGreen",
    hex = "#22383e",
    rgb = {
        r = 34,
        g = 56,
        b = 62
    }
}, {
    index = 57,
    name = "UtilGreen",
    hex = "#1d5a3f",
    rgb = {
        r = 29,
        g = 90,
        b = 63
    }
}, {
    index = 58,
    name = "WornDarkGreen",
    hex = "#2d423f",
    rgb = {
        r = 45,
        g = 66,
        b = 63
    }
}, {
    index = 59,
    name = "WornGreen",
    hex = "#45594b",
    rgb = {
        r = 69,
        g = 89,
        b = 75
    }
}, {
    index = 60,
    name = "WornSeaWash",
    hex = "#65867f",
    rgb = {
        r = 101,
        g = 134,
        b = 127
    }
}, {
    index = 61,
    name = "MetallicMidnightBlue",
    hex = "#222e46",
    rgb = {
        r = 34,
        g = 46,
        b = 70
    }
}, {
    index = 62,
    name = "MetallicDarkBlue",
    hex = "#233155",
    rgb = {
        r = 35,
        g = 49,
        b = 85
    }
}, {
    index = 63,
    name = "MetallicSaxonyBlue",
    hex = "#304c7e",
    rgb = {
        r = 48,
        g = 76,
        b = 126
    }
}, {
    index = 64,
    name = "MetallicBlue",
    hex = "#47578f",
    rgb = {
        r = 71,
        g = 87,
        b = 143
    }
}, {
    index = 65,
    name = "MetallicMarinerBlue",
    hex = "#637ba7",
    rgb = {
        r = 99,
        g = 123,
        b = 167
    }
}, {
    index = 66,
    name = "MetallicHarborBlue",
    hex = "#394762",
    rgb = {
        r = 57,
        g = 71,
        b = 98
    }
}, {
    index = 67,
    name = "MetallicDiamondBlue",
    hex = "#d6e7f1",
    rgb = {
        r = 214,
        g = 231,
        b = 241
    }
}, {
    index = 68,
    name = "MetallicSurfBlue",
    hex = "#76afbe",
    rgb = {
        r = 118,
        g = 175,
        b = 190
    }
}, {
    index = 69,
    name = "MetallicNauticalBlue",
    hex = "#345e72",
    rgb = {
        r = 52,
        g = 94,
        b = 114
    }
}, {
    index = 70,
    name = "MetallicBrightBlue",
    hex = "#0b9cf1",
    rgb = {
        r = 11,
        g = 156,
        b = 241
    }
}, {
    index = 71,
    name = "MetallicPurpleBlue",
    hex = "#2f2d52",
    rgb = {
        r = 47,
        g = 45,
        b = 82
    }
}, {
    index = 72,
    name = "MetallicSpinnakerBlue",
    hex = "#282c4d",
    rgb = {
        r = 40,
        g = 44,
        b = 77
    }
}, {
    index = 73,
    name = "MetallicUltraBlue",
    hex = "#2354a1",
    rgb = {
        r = 35,
        g = 84,
        b = 161
    }
}, {
    index = 74,
    name = "MetallicBrightBlue",
    hex = "#6ea3c6",
    rgb = {
        r = 110,
        g = 163,
        b = 198
    }
}, {
    index = 75,
    name = "UtilDarkBlue",
    hex = "#112552",
    rgb = {
        r = 17,
        g = 37,
        b = 82
    }
}, {
    index = 76,
    name = "UtilMidnightBlue",
    hex = "#1b203e",
    rgb = {
        r = 27,
        g = 32,
        b = 62
    }
}, {
    index = 77,
    name = "UtilBlue",
    hex = "#275190",
    rgb = {
        r = 39,
        g = 81,
        b = 144
    }
}, {
    index = 78,
    name = "UtilSeaFoamBlue",
    hex = "#608592",
    rgb = {
        r = 96,
        g = 133,
        b = 146
    }
}, {
    index = 79,
    name = "UtilLightningblue",
    hex = "#2446a8",
    rgb = {
        r = 36,
        g = 70,
        b = 168
    }
}, {
    index = 80,
    name = "UtilMauiBluePoly",
    hex = "#4271e1",
    rgb = {
        r = 66,
        g = 113,
        b = 225
    }
}, {
    index = 81,
    name = "UtilBrightBlue",
    hex = "#3b39e0",
    rgb = {
        r = 59,
        g = 57,
        b = 224
    }
}, {
    index = 82,
    name = "MatteDarkBlue",
    hex = "#1f2852",
    rgb = {
        r = 31,
        g = 40,
        b = 82
    }
}, {
    index = 83,
    name = "MatteBlue",
    hex = "#253aa7",
    rgb = {
        r = 37,
        g = 58,
        b = 167
    }
}, {
    index = 84,
    name = "MatteMidnightBlue",
    hex = "#1c3551",
    rgb = {
        r = 28,
        g = 53,
        b = 81
    }
}, {
    index = 85,
    name = "WornDarkblue",
    hex = "#4c5f81",
    rgb = {
        r = 76,
        g = 95,
        b = 129
    }
}, {
    index = 86,
    name = "WornBlue",
    hex = "#58688e",
    rgb = {
        r = 88,
        g = 104,
        b = 142
    }
}, {
    index = 87,
    name = "WornLightblue",
    hex = "#74b5d8",
    rgb = {
        r = 116,
        g = 181,
        b = 216
    }
}, {
    index = 88,
    name = "MetallicTaxiYellow",
    hex = "#ffcf20",
    rgb = {
        r = 255,
        g = 207,
        b = 32
    }
}, {
    index = 89,
    name = "MetallicRaceYellow",
    hex = "#fbe212",
    rgb = {
        r = 251,
        g = 226,
        b = 18
    }
}, {
    index = 90,
    name = "MetallicBronze",
    hex = "#916532",
    rgb = {
        r = 145,
        g = 101,
        b = 50
    }
}, {
    index = 91,
    name = "MetallicYellowBird",
    hex = "#e0e13d",
    rgb = {
        r = 224,
        g = 225,
        b = 61
    }
}, {
    index = 92,
    name = "MetallicLime",
    hex = "#98d223",
    rgb = {
        r = 152,
        g = 210,
        b = 35
    }
}, {
    index = 93,
    name = "MetallicChampagne",
    hex = "#9b8c78",
    rgb = {
        r = 155,
        g = 140,
        b = 120
    }
}, {
    index = 94,
    name = "MetallicPuebloBeige",
    hex = "#503218",
    rgb = {
        r = 80,
        g = 50,
        b = 24
    }
}, {
    index = 95,
    name = "MetallicDarkIvory",
    hex = "#473f2b",
    rgb = {
        r = 71,
        g = 63,
        b = 43
    }
}, {
    index = 96,
    name = "MetallicChocoBrown",
    hex = "#221b19",
    rgb = {
        r = 34,
        g = 27,
        b = 25
    }
}, {
    index = 97,
    name = "MetallicGoldenBrown",
    hex = "#653f23",
    rgb = {
        r = 101,
        g = 63,
        b = 35
    }
}, {
    index = 98,
    name = "MetallicLightBrown",
    hex = "#775c3e",
    rgb = {
        r = 119,
        g = 92,
        b = 62
    }
}, {
    index = 99,
    name = "MetallicStrawBeige",
    hex = "#ac9975",
    rgb = {
        r = 172,
        g = 153,
        b = 117
    }
}, {
    index = 100,
    name = "MetallicMossBrown",
    hex = "#6c6b4b",
    rgb = {
        r = 108,
        g = 107,
        b = 75
    }
}, {
    index = 101,
    name = "MetallicBistonBrown",
    hex = "#402e2b",
    rgb = {
        r = 64,
        g = 46,
        b = 43
    }
}, {
    index = 102,
    name = "MetallicBeechwood",
    hex = "#a4965f",
    rgb = {
        r = 164,
        g = 150,
        b = 95
    }
}, {
    index = 103,
    name = "MetallicDarkBeechwood",
    hex = "#46231a",
    rgb = {
        r = 70,
        g = 35,
        b = 26
    }
}, {
    index = 104,
    name = "MetallicChocoOrange",
    hex = "#752b19",
    rgb = {
        r = 117,
        g = 43,
        b = 25
    }
}, {
    index = 105,
    name = "MetallicBeachSand",
    hex = "#bfae7b",
    rgb = {
        r = 191,
        g = 174,
        b = 123
    }
}, {
    index = 106,
    name = "MetallicSunBleechedSand",
    hex = "#dfd5b2",
    rgb = {
        r = 223,
        g = 213,
        b = 178
    }
}, {
    index = 107,
    name = "MetallicCream",
    hex = "#f7edd5",
    rgb = {
        r = 247,
        g = 237,
        b = 213
    }
}, {
    index = 108,
    name = "UtilBrown",
    hex = "#3a2a1b",
    rgb = {
        r = 58,
        g = 42,
        b = 27
    }
}, {
    index = 109,
    name = "UtilMediumBrown",
    hex = "#785f33",
    rgb = {
        r = 120,
        g = 95,
        b = 51
    }
}, {
    index = 110,
    name = "UtilLightBrown",
    hex = "#b5a079",
    rgb = {
        r = 181,
        g = 160,
        b = 121
    }
}, {
    index = 111,
    name = "MetallicWhite",
    hex = "#fffff6",
    rgb = {
        r = 255,
        g = 255,
        b = 246
    }
}, {
    index = 112,
    name = "MetallicFrostWhite",
    hex = "#eaeaea",
    rgb = {
        r = 234,
        g = 234,
        b = 234
    }
}, {
    index = 113,
    name = "WornHoneyBeige",
    hex = "#b0ab94",
    rgb = {
        r = 176,
        g = 171,
        b = 148
    }
}, {
    index = 114,
    name = "WornBrown",
    hex = "#453831",
    rgb = {
        r = 69,
        g = 56,
        b = 49
    }
}, {
    index = 115,
    name = "WornDarkBrown",
    hex = "#2a282b",
    rgb = {
        r = 42,
        g = 40,
        b = 43
    }
}, {
    index = 116,
    name = "Wornstrawbeige",
    hex = "#726c57",
    rgb = {
        r = 114,
        g = 108,
        b = 87
    }
}, {
    index = 117,
    name = "BrushedSteel",
    hex = "#6a747c",
    rgb = {
        r = 106,
        g = 116,
        b = 124
    }
}, {
    index = 118,
    name = "BrushedBlacksteel",
    hex = "#354158",
    rgb = {
        r = 53,
        g = 65,
        b = 88
    }
}, {
    index = 119,
    name = "BrushedAluminium",
    hex = "#9ba0a8",
    rgb = {
        r = 155,
        g = 160,
        b = 168
    }
}, {
    index = 120,
    name = "Chrome",
    hex = "#5870a1",
    rgb = {
        r = 88,
        g = 112,
        b = 161
    }
}, {
    index = 121,
    name = "WornOffWhite",
    hex = "#eae6de",
    rgb = {
        r = 234,
        g = 230,
        b = 222
    }
}, {
    index = 122,
    name = "UtilOffWhite",
    hex = "#dfddd0",
    rgb = {
        r = 223,
        g = 221,
        b = 208
    }
}, {
    index = 123,
    name = "WornOrange",
    hex = "#f2ad2e",
    rgb = {
        r = 242,
        g = 173,
        b = 46
    }
}, {
    index = 124,
    name = "WornLightOrange",
    hex = "#f9a458",
    rgb = {
        r = 249,
        g = 164,
        b = 88
    }
}, {
    index = 125,
    name = "MetallicSecuricorGreen",
    hex = "#83c566",
    rgb = {
        r = 131,
        g = 197,
        b = 102
    }
}, {
    index = 126,
    name = "WornTaxiYellow",
    hex = "#f1cc40",
    rgb = {
        r = 241,
        g = 204,
        b = 64
    }
}, {
    index = 127,
    name = "policecarblue",
    hex = "#4cc3da",
    rgb = {
        r = 76,
        g = 195,
        b = 218
    }
}, {
    index = 128,
    name = "MatteGreen",
    hex = "#4e6443",
    rgb = {
        r = 78,
        g = 100,
        b = 67
    }
}, {
    index = 129,
    name = "MatteBrown",
    hex = "#bcac8f",
    rgb = {
        r = 188,
        g = 172,
        b = 143
    }
}, {
    index = 130,
    name = "WornOrange",
    hex = "#f8b658",
    rgb = {
        r = 248,
        g = 182,
        b = 88
    }
}, {
    index = 131,
    name = "MatteWhite",
    hex = "#fcf9f1",
    rgb = {
        r = 252,
        g = 249,
        b = 241
    }
}, {
    index = 132,
    name = "WornWhite",
    hex = "#fffffb",
    rgb = {
        r = 255,
        g = 255,
        b = 251
    }
}, {
    index = 133,
    name = "WornOliveArmyGreen",
    hex = "#81844c",
    rgb = {
        r = 129,
        g = 132,
        b = 76
    }
}, {
    index = 134,
    name = "PureWhite",
    hex = "#ffffff",
    rgb = {
        r = 255,
        g = 255,
        b = 255
    }
}, {
    index = 135,
    name = "HotPink",
    hex = "#f21f99",
    rgb = {
        r = 242,
        g = 31,
        b = 153
    }
}, {
    index = 136,
    name = "Salmonpink",
    hex = "#fdd6cd",
    rgb = {
        r = 253,
        g = 214,
        b = 205
    }
}, {
    index = 137,
    name = "MetallicVermillionPink",
    hex = "#df5891",
    rgb = {
        r = 223,
        g = 88,
        b = 145
    }
}, {
    index = 138,
    name = "Orange",
    hex = "#f6ae20",
    rgb = {
        r = 246,
        g = 174,
        b = 32
    }
}, {
    index = 139,
    name = "Green",
    hex = "#b0ee6e",
    rgb = {
        r = 176,
        g = 238,
        b = 110
    }
}, {
    index = 140,
    name = "Blue",
    hex = "#08e9fa",
    rgb = {
        r = 8,
        g = 233,
        b = 250
    }
}, {
    index = 141,
    name = "MettalicBlackBlue",
    hex = "#0a0c17",
    rgb = {
        r = 10,
        g = 12,
        b = 23
    }
}, {
    index = 142,
    name = "MetallicBlackPurple",
    hex = "#0c0d18",
    rgb = {
        r = 12,
        g = 13,
        b = 24
    }
}, {
    index = 143,
    name = "MetallicBlackRed",
    hex = "#0e0d14",
    rgb = {
        r = 14,
        g = 13,
        b = 20
    }
}, {
    index = 144,
    name = "huntergreen",
    hex = "#9f9e8a",
    rgb = {
        r = 159,
        g = 158,
        b = 138
    }
}, {
    index = 145,
    name = "MetallicPurple",
    hex = "#621276",
    rgb = {
        r = 98,
        g = 18,
        b = 118
    }
}, {
    index = 146,
    name = "MetaillicVDarkBlue",
    hex = "#0b1421",
    rgb = {
        r = 11,
        g = 20,
        b = 33
    }
}, {
    index = 147,
    name = "MODSHOPBLACK1",
    hex = "#11141a",
    rgb = {
        r = 17,
        g = 20,
        b = 26
    }
}, {
    index = 148,
    name = "MattePurple",
    hex = "#6b1f7b",
    rgb = {
        r = 107,
        g = 31,
        b = 123
    }
}, {
    index = 149,
    name = "MatteDarkPurple",
    hex = "#1e1d22",
    rgb = {
        r = 30,
        g = 29,
        b = 34
    }
}, {
    index = 150,
    name = "MetallicLavaRed",
    hex = "#bc1917",
    rgb = {
        r = 188,
        g = 25,
        b = 23
    }
}, {
    index = 151,
    name = "MatteForestGreen",
    hex = "#2d362a",
    rgb = {
        r = 45,
        g = 54,
        b = 42
    }
}, {
    index = 152,
    name = "MatteOliveDrab",
    hex = "#696748",
    rgb = {
        r = 105,
        g = 103,
        b = 72
    }
}, {
    index = 153,
    name = "MatteDesertBrown",
    hex = "#7a6c55",
    rgb = {
        r = 122,
        g = 108,
        b = 85
    }
}, {
    index = 154,
    name = "MatteDesertTan",
    hex = "#c3b492",
    rgb = {
        r = 195,
        g = 180,
        b = 146
    }
}, {
    index = 155,
    name = "MatteFoilageGreen",
    hex = "#5a6352",
    rgb = {
        r = 90,
        g = 99,
        b = 82
    }
}, {
    index = 156,
    name = "DEFAULTALLOYCOLOR",
    hex = "#81827f",
    rgb = {
        r = 129,
        g = 130,
        b = 127
    }
}, {
    index = 157,
    name = "EpsilonBlue",
    hex = "#afd6e4",
    rgb = {
        r = 175,
        g = 214,
        b = 228
    }
}, {
    index = 158,
    name = "PureGold",
    hex = "#7a6440",
    rgb = {
        r = 122,
        g = 100,
        b = 64
    }
}, {
    index = 159,
    name = "BrushedGold",
    hex = "#7f6a48",
    rgb = {
        r = 127,
        g = 106,
        b = 72
    }
    -- rgb="127, 106, 72 ",
}}

colors_lib.StandardColor = function(color_name)
    for _, standard_color in pairs(colors_lib.colors_standard) do
        if standard_color.name:lower() == color_name or standard_color.index == color_name then
            return standard_color
        end
    end
end

colors_lib.random_color = function()
    local keyset = {}
    local num_colors = 0
    for k in pairs(colors_lib.colors_rgb) do
        if (type(colors_lib.colors_rgb[k]) == "table") then
            num_colors = num_colors + 1
            table.insert(keyset, k)
        end
    end
    local rand = math.random(1, num_colors)
    return colors_lib.colors_rgb[keyset[rand]]
end

colors_lib.RGB = function(name)
    return colors_lib.colors_rgb[name][1], colors_lib.colors_rgb[name][2], colors_lib.colors_rgb[name][3]
end

local function dec_to_hex(input)
    return ('%X'):format(input)
end

colors_lib.HEX = function(name)
    return dec_to_hex(colors_lib.colors_rgb[name][1]) .. dec_to_hex(colors_lib.colors_rgb[name][2]) ..
               dec_to_hex(colors_lib.colors_rgb[name][3])
end

colors_lib.DEC = function(hexcode)
    return {
        r = tonumber(string.sub(hexcode, 1, 2), 16),
        g = tonumber(string.sub(hexcode, 3, 4), 16),
        b = tonumber(string.sub(hexcode, 5, 6), 16)
    }
end

colors_lib.COMPLIMENT = function(color)
    return {(255 - color[1]), (255 - color[2]), (255 - color[3])}
end

return colors_lib

