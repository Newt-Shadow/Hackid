.class public Lcom/yandex/metrica/impl/ob/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Hc;)Lcom/yandex/metrica/impl/ob/pf$b;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/pf$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/pf$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->c()Landroid/location/Location;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->b()Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-wide v2, v0, Lcom/yandex/metrica/impl/ob/pf$b;->a:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->b()Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    :goto_0
    iput-wide v2, v0, Lcom/yandex/metrica/impl/ob/pf$b;->a:J

    .line 28
    .line 29
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    iput-wide v3, v0, Lcom/yandex/metrica/impl/ob/pf$b;->c:J

    .line 40
    .line 41
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Hc;->a:Lcom/yandex/metrica/impl/ob/oc$a;

    .line 42
    .line 43
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/J1;->a(Lcom/yandex/metrica/impl/ob/oc$a;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iput v3, v0, Lcom/yandex/metrica/impl/ob/pf$b;->k:I

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->e()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    iput-wide v3, v0, Lcom/yandex/metrica/impl/ob/pf$b;->b:J

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->d()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iput-wide v2, v0, Lcom/yandex/metrica/impl/ob/pf$b;->l:J

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    iput-wide v2, v0, Lcom/yandex/metrica/impl/ob/pf$b;->d:D

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    iput-wide v2, v0, Lcom/yandex/metrica/impl/ob/pf$b;->e:D

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iput v2, v0, Lcom/yandex/metrica/impl/ob/pf$b;->f:I

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iput v2, v0, Lcom/yandex/metrica/impl/ob/pf$b;->g:I

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    iput v2, v0, Lcom/yandex/metrica/impl/ob/pf$b;->h:I

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    .line 112
    .line 113
    .line 114
    move-result-wide v2

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    long-to-int v2, v2

    .line 120
    iput v2, v0, Lcom/yandex/metrica/impl/ob/pf$b;->i:I

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "gps"

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_1

    .line 133
    .line 134
    const/4 v1, 0x1

    .line 135
    goto :goto_1

    .line 136
    :cond_1
    const-string v2, "network"

    .line 137
    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_2

    .line 143
    .line 144
    const/4 v1, 0x2

    .line 145
    goto :goto_1

    .line 146
    :cond_2
    const-string v2, "fused"

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_3

    .line 153
    .line 154
    const/4 v1, 0x3

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    const/4 v1, 0x0

    .line 157
    :goto_1
    iput v1, v0, Lcom/yandex/metrica/impl/ob/pf$b;->j:I

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->a()Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/J1;->a(Lcom/yandex/metrica/impl/ob/E$b$a;)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    iput p1, v0, Lcom/yandex/metrica/impl/ob/pf$b;->m:I

    .line 168
    .line 169
    return-object v0
.end method
