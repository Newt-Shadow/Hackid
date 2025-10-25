.class public final Lio/sentry/protocol/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/k;
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


# virtual methods
.method public bridge synthetic a(Lio/sentry/l2;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/k$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/protocol/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/protocol/k;
    .locals 5

    .line 1
    new-instance v0, Lio/sentry/protocol/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/protocol/k;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lio/sentry/l2;->t()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 15
    .line 16
    if-ne v2, v3, :cond_6

    .line 17
    .line 18
    invoke-interface {p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, -0x1

    .line 30
    sparse-switch v3, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :sswitch_0
    const-string v3, "count"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v4, 0x4

    .line 44
    goto :goto_1

    .line 45
    :sswitch_1
    const-string v3, "tags"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v4, 0x3

    .line 55
    goto :goto_1

    .line 56
    :sswitch_2
    const-string v3, "sum"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v4, 0x2

    .line 66
    goto :goto_1

    .line 67
    :sswitch_3
    const-string v3, "min"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/4 v4, 0x1

    .line 77
    goto :goto_1

    .line 78
    :sswitch_4
    const-string v3, "max"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/4 v4, 0x0

    .line 88
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 89
    .line 90
    .line 91
    if-nez v1, :cond_5

    .line 92
    .line 93
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    :cond_5
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/l2;->j0()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v0, v2}, Lio/sentry/protocol/k;->b(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/l2;->B0()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Ljava/util/Map;

    .line 115
    .line 116
    invoke-static {v2}, Lio/sentry/util/b;->c(Ljava/util/Map;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v0, v2}, Lio/sentry/protocol/k;->a(Lio/sentry/protocol/k;Ljava/util/Map;)Ljava/util/Map;

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/l2;->S()D

    .line 125
    .line 126
    .line 127
    move-result-wide v2

    .line 128
    invoke-virtual {v0, v2, v3}, Lio/sentry/protocol/k;->e(D)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/l2;->S()D

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    invoke-virtual {v0, v2, v3}, Lio/sentry/protocol/k;->d(D)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/l2;->S()D

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    invoke-virtual {v0, v2, v3}, Lio/sentry/protocol/k;->c(D)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_6
    invoke-virtual {v0, v1}, Lio/sentry/protocol/k;->f(Ljava/util/Map;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Lio/sentry/l2;->r()V

    .line 154
    .line 155
    .line 156
    return-object v0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x1a564 -> :sswitch_4
        0x1a652 -> :sswitch_3
        0x1be4b -> :sswitch_2
        0x363419 -> :sswitch_1
        0x5a7510f -> :sswitch_0
    .end sparse-switch

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
