.class public final Lio/sentry/protocol/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/sentry/protocol/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b(Lio/sentry/protocol/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/f;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lio/sentry/protocol/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static d(Ljava/util/Map;)Lio/sentry/protocol/f;
    .locals 5

    .line 1
    new-instance v0, Lio/sentry/protocol/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/protocol/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_6

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, -0x1

    .line 44
    sparse-switch v3, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :sswitch_0
    const-string v3, "country_code"

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v4, 0x2

    .line 58
    goto :goto_1

    .line 59
    :sswitch_1
    const-string v3, "city"

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v4, 0x1

    .line 69
    goto :goto_1

    .line 70
    :sswitch_2
    const-string v3, "region"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v4, 0x0

    .line 80
    :goto_1
    const/4 v1, 0x0

    .line 81
    packed-switch v4, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_0
    instance-of v3, v2, Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    move-object v1, v2

    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    .line 92
    :cond_3
    iput-object v1, v0, Lio/sentry/protocol/f;->b:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_1
    instance-of v3, v2, Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    move-object v1, v2

    .line 100
    check-cast v1, Ljava/lang/String;

    .line 101
    .line 102
    :cond_4
    iput-object v1, v0, Lio/sentry/protocol/f;->a:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :pswitch_2
    instance-of v3, v2, Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    move-object v1, v2

    .line 110
    check-cast v1, Ljava/lang/String;

    .line 111
    .line 112
    :cond_5
    iput-object v1, v0, Lio/sentry/protocol/f;->c:Ljava/lang/String;

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    return-object v0

    .line 116
    nop

    .line 117
    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_2
        0x2e996b -> :sswitch_1
        0x58475cf6 -> :sswitch_0
    .end sparse-switch

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public e(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/f;->d:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/m2;->t()Lio/sentry/m2;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/protocol/f;->a:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "city"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lio/sentry/protocol/f;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/f;->b:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v0, "country_code"

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lio/sentry/protocol/f;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/f;->c:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const-string v0, "region"

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lio/sentry/protocol/f;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/f;->d:Ljava/util/Map;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    iget-object v2, p0, Lio/sentry/protocol/f;->d:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {p1, v1}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 87
    .line 88
    .line 89
    return-void
.end method
