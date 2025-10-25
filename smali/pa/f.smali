.class public Lpa/f;
.super Lga/a;
.source "SourceFile"


# instance fields
.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;

.field private d:Landroid/media/CamcorderProfile;

.field private e:Landroid/media/EncoderProfiles;

.field private f:Lpa/g;

.field private g:I


# direct methods
.method public constructor <init>(Lfa/e0;Lpa/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lga/a;-><init>(Lfa/e0;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lpa/f;->f:Lpa/g;

    .line 5
    .line 6
    const/16 p1, 0xa

    .line 7
    .line 8
    :try_start_0
    invoke-static {p3, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lpa/f;->g:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    invoke-direct {p0, p2, p1}, Lpa/f;->e(Lpa/g;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lpa/f;->g:I

    .line 20
    .line 21
    return-void
.end method

.method static d(ILpa/g;)Landroid/util/Size;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lpa/g;->c:Lpa/g;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-le v0, v2, :cond_0

    .line 12
    .line 13
    move-object p1, v1

    .line 14
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x1f

    .line 17
    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    invoke-static {p0, p1}, Lpa/f;->f(ILpa/g;)Landroid/media/EncoderProfiles;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lpa/a;->a(Landroid/media/EncoderProfiles;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lpa/b;->a(Ljava/lang/Object;)Landroid/media/EncoderProfiles$VideoProfile;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    new-instance p0, Landroid/util/Size;

    .line 40
    .line 41
    invoke-static {v0}, Lpa/c;->a(Landroid/media/EncoderProfiles$VideoProfile;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {v0}, Lpa/d;->a(Landroid/media/EncoderProfiles$VideoProfile;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_1
    invoke-static {p0, p1}, Lpa/f;->g(ILpa/g;)Landroid/media/CamcorderProfile;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance p1, Landroid/util/Size;

    .line 58
    .line 59
    iget v0, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 60
    .line 61
    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 62
    .line 63
    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 64
    .line 65
    .line 66
    return-object p1
.end method

.method private e(Lpa/g;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lpa/f;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x1f

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    iput-object v2, p0, Lpa/f;->d:Landroid/media/CamcorderProfile;

    .line 17
    .line 18
    invoke-static {p2, p1}, Lpa/f;->f(ILpa/g;)Landroid/media/EncoderProfiles;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lpa/f;->e:Landroid/media/EncoderProfiles;

    .line 23
    .line 24
    invoke-static {v0}, Lpa/a;->a(Landroid/media/EncoderProfiles;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lpa/b;->a(Ljava/lang/Object;)Landroid/media/EncoderProfiles$VideoProfile;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v1, Landroid/util/Size;

    .line 39
    .line 40
    invoke-static {v0}, Lpa/c;->a(Landroid/media/EncoderProfiles$VideoProfile;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v0}, Lpa/d;->a(Landroid/media/EncoderProfiles$VideoProfile;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lpa/f;->b:Landroid/util/Size;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    :cond_1
    if-nez v3, :cond_2

    .line 55
    .line 56
    iput-object v2, p0, Lpa/f;->e:Landroid/media/EncoderProfiles;

    .line 57
    .line 58
    invoke-static {p2, p1}, Lpa/f;->g(ILpa/g;)Landroid/media/CamcorderProfile;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lpa/f;->d:Landroid/media/CamcorderProfile;

    .line 63
    .line 64
    new-instance v0, Landroid/util/Size;

    .line 65
    .line 66
    iget-object v1, p0, Lpa/f;->d:Landroid/media/CamcorderProfile;

    .line 67
    .line 68
    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 69
    .line 70
    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 71
    .line 72
    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lpa/f;->b:Landroid/util/Size;

    .line 76
    .line 77
    :cond_2
    invoke-static {p2, p1}, Lpa/f;->d(ILpa/g;)Landroid/util/Size;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lpa/f;->c:Landroid/util/Size;

    .line 82
    .line 83
    return-void
.end method

.method public static f(ILpa/g;)Landroid/media/EncoderProfiles;
    .locals 2

    .line 1
    if-ltz p0, :cond_7

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lpa/f$a;->a:[I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget p1, v1, p1

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_0
    const/4 p1, 0x1

    .line 20
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {v0, p1}, Lpa/e;->a(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    :pswitch_1
    const/16 p1, 0x8

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {v0, p1}, Lpa/e;->a(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    :pswitch_2
    const/4 p1, 0x6

    .line 45
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-static {v0, p1}, Lpa/e;->a(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_2
    :pswitch_3
    const/4 p1, 0x5

    .line 57
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-static {v0, p1}, Lpa/e;->a(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_3
    :pswitch_4
    const/4 p1, 0x4

    .line 69
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-static {v0, p1}, Lpa/e;->a(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_4
    :pswitch_5
    const/4 p1, 0x7

    .line 81
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    invoke-static {v0, p1}, Lpa/e;->a(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 93
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_6

    .line 98
    .line 99
    invoke-static {v0, p1}, Lpa/e;->a(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string p1, "No capture session available for current capture session."

    .line 107
    .line 108
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    .line 113
    .line 114
    const-string p1, "getBestAvailableCamcorderProfileForResolutionPreset can only be used with valid (>=0) camera identifiers."

    .line 115
    .line 116
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    nop

    .line 121
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

.method public static g(ILpa/g;)Landroid/media/CamcorderProfile;
    .locals 1

    .line 1
    if-ltz p0, :cond_7

    .line 2
    .line 3
    sget-object v0, Lpa/f$a;->a:[I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    aget p1, v0, p1

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    const/4 p1, 0x1

    .line 16
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    :pswitch_1
    const/16 p1, 0x8

    .line 28
    .line 29
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    :pswitch_2
    const/4 p1, 0x6

    .line 41
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    :pswitch_3
    const/4 p1, 0x5

    .line 53
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_3
    :pswitch_4
    const/4 p1, 0x4

    .line 65
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_4
    :pswitch_5
    const/4 p1, 0x7

    .line 77
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 89
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string p1, "No capture session available for current capture session."

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    .line 109
    .line 110
    const-string p1, "getBestAvailableCamcorderProfileForResolutionPreset can only be used with valid (>=0) camera identifiers."

    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    nop

    .line 117
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


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ResolutionFeature"

    return-object v0
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget v0, p0, Lpa/f;->g:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public h()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lpa/f;->c:Landroid/util/Size;

    .line 2
    .line 3
    return-object v0
.end method
