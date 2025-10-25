.class public final Lta/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lta/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lta/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lta/a;
    .locals 11

    .line 1
    sget-object v0, Lpa/g;->c:Lpa/g;

    .line 2
    .line 3
    const-string v1, "resolutionPreset"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v3, v2

    .line 14
    :goto_0
    instance-of v3, v3, Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "null cannot be cast to non-null type kotlin.String"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Lpa/g;->valueOf(Ljava/lang/String;)Lpa/g;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    move-object v10, v0

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const-string v0, "bitRate"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v0, v2

    .line 44
    :goto_1
    move-object v4, v0

    .line 45
    check-cast v4, Ljava/lang/Integer;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    const-string v0, "videoCodec"

    .line 50
    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move-object v0, v2

    .line 57
    :goto_2
    move-object v5, v0

    .line 58
    check-cast v5, Ljava/lang/Integer;

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    const-string v0, "frameRate"

    .line 63
    .line 64
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    move-object v0, v2

    .line 70
    :goto_3
    move-object v6, v0

    .line 71
    check-cast v6, Ljava/lang/Integer;

    .line 72
    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    const-string v0, "maxFileSize"

    .line 76
    .line 77
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    move-object v0, v2

    .line 83
    :goto_4
    move-object v7, v0

    .line 84
    check-cast v7, Ljava/lang/Integer;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    const-string v0, "enableAudio"

    .line 89
    .line 90
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_5

    .line 95
    :cond_6
    move-object v0, v2

    .line 96
    :goto_5
    check-cast v0, Ljava/lang/Boolean;

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    goto :goto_6

    .line 105
    :cond_7
    const/4 v0, 0x0

    .line 106
    :goto_6
    move v9, v0

    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    const-string v0, "fileExtension"

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :cond_8
    check-cast v2, Ljava/lang/String;

    .line 116
    .line 117
    if-nez v2, :cond_9

    .line 118
    .line 119
    const-string p1, "mp4"

    .line 120
    .line 121
    move-object v8, p1

    .line 122
    goto :goto_7

    .line 123
    :cond_9
    move-object v8, v2

    .line 124
    :goto_7
    new-instance p1, Lta/a;

    .line 125
    .line 126
    move-object v3, p1

    .line 127
    invoke-direct/range {v3 .. v10}, Lta/a;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZLpa/g;)V

    .line 128
    .line 129
    .line 130
    return-object p1
.end method
