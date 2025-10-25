.class public abstract Lfa/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :sswitch_0
    const-string v0, "landscapeRight"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x3

    .line 22
    goto :goto_0

    .line 23
    :sswitch_1
    const-string v0, "portraitUp"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x2

    .line 33
    goto :goto_0

    .line 34
    :sswitch_2
    const-string v0, "portraitDown"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :sswitch_3
    const-string v0, "landscapeLeft"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v1, 0x0

    .line 55
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "Could not deserialize device orientation: "

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :pswitch_0
    sget-object p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;->LANDSCAPE_RIGHT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_1
    sget-object p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;->PORTRAIT_UP:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_2
    sget-object p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;->PORTRAIT_DOWN:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_3
    sget-object p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;->LANDSCAPE_LEFT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 94
    .line 95
    const-string v0, "Could not deserialize null device orientation."

    .line 96
    .line 97
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :sswitch_data_0
    .sparse-switch
        -0x7893ce9e -> :sswitch_3
        -0x1434f123 -> :sswitch_2
        0x2c774b96 -> :sswitch_1
        0x66705c21 -> :sswitch_0
    .end sparse-switch

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/app/Activity;)Ljava/util/List;
    .locals 8

    .line 1
    const-string v0, "camera"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    array-length v2, v0

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_4

    .line 21
    .line 22
    aget-object v4, v0, v3

    .line 23
    .line 24
    const/16 v5, 0xa

    .line 25
    .line 26
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    const/4 v5, -0x1

    .line 32
    :goto_1
    if-gez v5, :cond_0

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v7, "name"

    .line 45
    .line 46
    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 50
    .line 51
    invoke-virtual {v6, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const-string v7, "sensorOrientation"

    .line 62
    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 71
    .line 72
    invoke-virtual {v6, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const-string v6, "lensFacing"

    .line 83
    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    const/4 v7, 0x1

    .line 87
    if-eq v4, v7, :cond_2

    .line 88
    .line 89
    const/4 v7, 0x2

    .line 90
    if-eq v4, v7, :cond_1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    const-string v4, "external"

    .line 94
    .line 95
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    const-string v4, "back"

    .line 100
    .line 101
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    const-string v4, "front"

    .line 106
    .line 107
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    return-object v1
.end method

.method public static c(Ljava/lang/String;Lpa/g;)Landroid/media/CamcorderProfile;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-object v0, Lfa/m0$a;->b:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    const/4 p1, 0x1

    .line 18
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    :pswitch_1
    const/16 p1, 0x8

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    :pswitch_2
    const/4 p1, 0x6

    .line 43
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    :pswitch_3
    const/4 p1, 0x5

    .line 55
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_3
    :pswitch_4
    const/4 p1, 0x4

    .line 67
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_4
    :pswitch_5
    const/4 p1, 0x7

    .line 79
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 91
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    const-string p1, "No capture session available for current capture session."

    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static d(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    .line 1
    const-string v0, "camera"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 8
    .line 9
    return-object p0
.end method

.method static e(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    sget-object v0, Lfa/m0$a;->a:[I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const-string p0, "landscapeRight"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "Could not serialize device orientation: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    const-string p0, "landscapeLeft"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    const-string p0, "portraitDown"

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_3
    const-string p0, "portraitUp"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 63
    .line 64
    const-string v0, "Could not serialize null device orientation."

    .line 65
    .line 66
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method
