.class Lio/flutter/plugins/imagepicker/ImagePickerCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/imagepicker/ImagePickerCache$CacheType;
    }
.end annotation


# static fields
.field private static final FLUTTER_IMAGE_PICKER_IMAGE_PATH_KEY:Ljava/lang/String; = "flutter_image_picker_image_path"

.field static final MAP_KEY_ERROR:Ljava/lang/String; = "error"

.field static final MAP_KEY_IMAGE_QUALITY:Ljava/lang/String; = "imageQuality"

.field static final MAP_KEY_MAX_HEIGHT:Ljava/lang/String; = "maxHeight"

.field static final MAP_KEY_MAX_WIDTH:Ljava/lang/String; = "maxWidth"

.field static final MAP_KEY_PATH_LIST:Ljava/lang/String; = "pathList"

.field static final MAP_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final MAP_TYPE_VALUE_IMAGE:Ljava/lang/String; = "image"

.field private static final MAP_TYPE_VALUE_VIDEO:Ljava/lang/String; = "video"

.field static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "flutter_image_picker_shared_preference"

.field private static final SHARED_PREFERENCE_ERROR_CODE_KEY:Ljava/lang/String; = "flutter_image_picker_error_code"

.field private static final SHARED_PREFERENCE_ERROR_MESSAGE_KEY:Ljava/lang/String; = "flutter_image_picker_error_message"

.field private static final SHARED_PREFERENCE_IMAGE_QUALITY_KEY:Ljava/lang/String; = "flutter_image_picker_image_quality"

.field private static final SHARED_PREFERENCE_MAX_HEIGHT_KEY:Ljava/lang/String; = "flutter_image_picker_max_height"

.field private static final SHARED_PREFERENCE_MAX_WIDTH_KEY:Ljava/lang/String; = "flutter_image_picker_max_width"

.field private static final SHARED_PREFERENCE_PENDING_IMAGE_URI_PATH_KEY:Ljava/lang/String; = "flutter_image_picker_pending_image_uri"

.field private static final SHARED_PREFERENCE_TYPE_KEY:Ljava/lang/String; = "flutter_image_picker_type"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "flutter_image_picker_shared_preference"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "flutter_image_picker_type"

    .line 15
    .line 16
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "flutter_image_picker_shared_preference"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method getCacheMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->context:Landroid/content/Context;

    .line 7
    .line 8
    const-string v2, "flutter_image_picker_shared_preference"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "flutter_image_picker_image_path"

    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x1

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    new-instance v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "pathList"

    .line 37
    .line 38
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move v3, v5

    .line 42
    :cond_0
    const-string v2, "flutter_image_picker_error_code"

    .line 43
    .line 44
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v6, ""

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    new-instance v3, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError$Builder;

    .line 53
    .line 54
    invoke-direct {v3}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError$Builder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v3, v2}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError$Builder;->setCode(Ljava/lang/String;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError$Builder;

    .line 62
    .line 63
    .line 64
    const-string v2, "flutter_image_picker_error_message"

    .line 65
    .line 66
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v3, v2}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError$Builder;->setMessage(Ljava/lang/String;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError$Builder;

    .line 77
    .line 78
    .line 79
    :cond_1
    const-string v2, "error"

    .line 80
    .line 81
    invoke-virtual {v3}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError$Builder;->build()Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move v5, v3

    .line 90
    :goto_0
    if-eqz v5, :cond_7

    .line 91
    .line 92
    const-string v2, "flutter_image_picker_type"

    .line 93
    .line 94
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v3, "video"

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    sget-object v2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;->VIDEO:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    sget-object v2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;->IMAGE:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 116
    .line 117
    :goto_1
    const-string v3, "type"

    .line 118
    .line 119
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_4
    const-string v2, "flutter_image_picker_max_width"

    .line 123
    .line 124
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    const-wide/16 v4, 0x0

    .line 129
    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const-string v3, "maxWidth"

    .line 145
    .line 146
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_5
    const-string v2, "flutter_image_picker_max_height"

    .line 150
    .line 151
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_6

    .line 156
    .line 157
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 158
    .line 159
    .line 160
    move-result-wide v2

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const-string v3, "maxHeight"

    .line 170
    .line 171
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    :cond_6
    const-string v2, "flutter_image_picker_image_quality"

    .line 175
    .line 176
    const/16 v3, 0x64

    .line 177
    .line 178
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    const-string v2, "imageQuality"

    .line 183
    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    :cond_7
    return-object v0
.end method

.method retrievePendingCameraMediaUriPath()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "flutter_image_picker_shared_preference"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "flutter_image_picker_pending_image_uri"

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method saveDimensionWithOutputOptions(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "flutter_image_picker_shared_preference"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->getMaxWidth()Ljava/lang/Double;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->getMaxWidth()Ljava/lang/Double;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    const-string v3, "flutter_image_picker_max_width"

    .line 33
    .line 34
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->getMaxHeight()Ljava/lang/Double;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->getMaxHeight()Ljava/lang/Double;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    const-string v3, "flutter_image_picker_max_height"

    .line 56
    .line 57
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->getQuality()Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const-string v1, "flutter_image_picker_image_quality"

    .line 69
    .line 70
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method savePendingCameraMediaUriPath(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "flutter_image_picker_shared_preference"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "flutter_image_picker_pending_image_uri"

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method saveResult(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerCache;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "flutter_image_picker_shared_preference"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "flutter_image_picker_image_path"

    .line 22
    .line 23
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    :cond_0
    if-eqz p2, :cond_1

    .line 27
    .line 28
    const-string p1, "flutter_image_picker_error_code"

    .line 29
    .line 30
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    :cond_1
    if-eqz p3, :cond_2

    .line 34
    .line 35
    const-string p1, "flutter_image_picker_error_message"

    .line 36
    .line 37
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method saveType(Lio/flutter/plugins/imagepicker/ImagePickerCache$CacheType;)V
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/imagepicker/ImagePickerCache$1;->$SwitchMap$io$flutter$plugins$imagepicker$ImagePickerCache$CacheType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "video"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->setType(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string p1, "image"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->setType(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
