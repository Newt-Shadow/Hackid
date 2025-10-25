.class public Lcom/yandex/metrica/impl/ob/Kb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/vb;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/Jb;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jb;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Jb;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/Kb;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Jb;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Jb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Kb;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Kb;->b:Lcom/yandex/metrica/impl/ob/Jb;

    return-void
.end method

.method private b(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ub;
    .locals 6

    .line 1
    sget v0, Lcom/yandex/metrica/identifiers/AdsIdentifiersProvider;->a:I

    .line 2
    .line 3
    const-class v0, Lcom/yandex/metrica/identifiers/AdsIdentifiersProvider;

    .line 4
    .line 5
    const-class v1, Landroid/content/Context;

    .line 6
    .line 7
    const-class v2, Landroid/os/Bundle;

    .line 8
    .line 9
    filled-new-array {v1, v2}, [Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "requestIdentifiers"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Kb;->a:Ljava/lang/String;

    .line 25
    .line 26
    const-string v3, "com.yandex.metrica.identifiers.extra.PROVIDER"

    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Kb;->b:Lcom/yandex/metrica/impl/ob/Jb;

    .line 32
    .line 33
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    const-string v0, "com.yandex.metrica.identifiers.extra.TRACKING_INFO"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    sget-object v2, Lcom/yandex/metrica/impl/ob/Ib;->a:Ljava/util/Map;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    check-cast v2, Lcom/yandex/metrica/impl/ob/tb$a;

    .line 70
    .line 71
    const-string v3, "com.yandex.metrica.identifiers.extra.ID"

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v4, "com.yandex.metrica.identifiers.extra.LIMITED"

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_0

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/tb;

    .line 94
    .line 95
    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/metrica/impl/ob/tb;-><init>(Lcom/yandex/metrica/impl/ob/tb$a;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 96
    .line 97
    .line 98
    move-object v1, v0

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v1, "Provider "

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, " is invalid"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_2
    :goto_0
    const-string v0, "com.yandex.metrica.identifiers.extra.STATUS"

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/U0;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/U0;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v2, "com.yandex.metrica.identifiers.extra.ERROR_MESSAGE"

    .line 147
    .line 148
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance v2, Lcom/yandex/metrica/impl/ob/ub;

    .line 153
    .line 154
    invoke-direct {v2, v1, v0, p1}, Lcom/yandex/metrica/impl/ob/ub;-><init>(Lcom/yandex/metrica/impl/ob/tb;Lcom/yandex/metrica/impl/ob/U0;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    move-object v1, v2

    .line 158
    :cond_3
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ub;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Fb;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Fb;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/Kb;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Gb;)Lcom/yandex/metrica/impl/ob/ub;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Gb;)Lcom/yandex/metrica/impl/ob/ub;
    .locals 8

    const-string v0, " adv_id: "

    const-string v1, "exception while fetching "

    .line 2
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/Gb;->c()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 3
    :catch_0
    :goto_0
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/Gb;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Kb;->b(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ub;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v3

    .line 5
    new-instance v4, Lcom/yandex/metrica/impl/ob/ub;

    sget-object v5, Lcom/yandex/metrica/impl/ob/U0;->g:Lcom/yandex/metrica/impl/ob/U0;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/Kb;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v5, v3}, Lcom/yandex/metrica/impl/ob/ub;-><init>(Lcom/yandex/metrica/impl/ob/tb;Lcom/yandex/metrica/impl/ob/U0;Ljava/lang/String;)V

    :goto_1
    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_0
    move-object v3, v2

    .line 8
    :goto_2
    new-instance v4, Lcom/yandex/metrica/impl/ob/ub;

    sget-object v5, Lcom/yandex/metrica/impl/ob/U0;->g:Lcom/yandex/metrica/impl/ob/U0;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/Kb;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v5, v3}, Lcom/yandex/metrica/impl/ob/ub;-><init>(Lcom/yandex/metrica/impl/ob/tb;Lcom/yandex/metrica/impl/ob/U0;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :goto_3
    :try_start_1
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/Gb;->a()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 10
    new-instance v3, Lcom/yandex/metrica/impl/ob/ub;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/ub;-><init>()V

    :cond_2
    return-object v3
.end method
