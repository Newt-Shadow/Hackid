.class public final Lio/sentry/rrweb/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lio/sentry/rrweb/g;Lio/sentry/l2;Lio/sentry/ILogger;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Lio/sentry/l2;->t()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 10
    .line 11
    if-ne v1, v2, :cond_7

    .line 12
    .line 13
    invoke-interface {p2}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, -0x1

    .line 26
    sparse-switch v2, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :sswitch_0
    const-string v2, "width"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v4, 0x2

    .line 40
    goto :goto_1

    .line 41
    :sswitch_1
    const-string v2, "href"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v4, 0x1

    .line 51
    goto :goto_1

    .line 52
    :sswitch_2
    const-string v2, "height"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v4, v3

    .line 62
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-interface {p2, p3, v0, v1}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_0
    invoke-interface {p2}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    :goto_2
    invoke-static {p1, v3}, Lio/sentry/rrweb/g;->i(Lio/sentry/rrweb/g;I)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_1
    invoke-interface {p2}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v1, :cond_5

    .line 96
    .line 97
    const-string v1, ""

    .line 98
    .line 99
    :cond_5
    invoke-static {p1, v1}, Lio/sentry/rrweb/g;->g(Lio/sentry/rrweb/g;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_2
    invoke-interface {p2}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-nez v1, :cond_6

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    :goto_3
    invoke-static {p1, v3}, Lio/sentry/rrweb/g;->h(Lio/sentry/rrweb/g;I)I

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/g;->k(Ljava/util/Map;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p2}, Lio/sentry/l2;->r()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_2
        0x30ff2b -> :sswitch_1
        0x6be2dc6 -> :sswitch_0
    .end sparse-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic a(Lio/sentry/l2;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/rrweb/g$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/g;
    .locals 5

    .line 1
    invoke-interface {p1}, Lio/sentry/l2;->t()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/rrweb/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/rrweb/g;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lio/sentry/rrweb/b$a;

    .line 10
    .line 11
    invoke-direct {v1}, Lio/sentry/rrweb/b$a;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-object v4, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 20
    .line 21
    if-ne v3, v4, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    const-string v4, "data"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1, v0, v3, p1, p2}, Lio/sentry/rrweb/b$a;->a(Lio/sentry/rrweb/b;Ljava/lang/String;Lio/sentry/l2;Lio/sentry/ILogger;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    new-instance v2, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {p1, p2, v2, v3}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lio/sentry/rrweb/g$a;->c(Lio/sentry/rrweb/g;Lio/sentry/l2;Lio/sentry/ILogger;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v0, v2}, Lio/sentry/rrweb/g;->m(Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Lio/sentry/l2;->r()V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method
