.class public final Lcom/yandex/metrica/impl/ob/kb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/jb;

.field private final b:Lcom/yandex/metrica/impl/ob/Uh;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/jb;Lcom/yandex/metrica/impl/ob/Uh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kb;->a:Lcom/yandex/metrica/impl/ob/jb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kb;->b:Lcom/yandex/metrica/impl/ob/Uh;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    new-instance v0, Lcom/yandex/metrica/network/Request$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kb;->b:Lcom/yandex/metrica/impl/ob/Uh;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Uh;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/yandex/metrica/network/Request$Builder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/yandex/metrica/network/Request$Builder;->b()Lcom/yandex/metrica/network/Request;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/yandex/metrica/network/NetworkClient$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "GlobalServiceLocator.getInstance()"

    .line 26
    .line 27
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/F0;->t()Lcom/yandex/metrica/impl/ob/sd;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/network/NetworkClient$Builder;->f(Ljavax/net/ssl/SSLSocketFactory;)Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget v3, Lcom/yandex/metrica/impl/ob/md;->a:I

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/network/NetworkClient$Builder;->b(I)Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/network/NetworkClient$Builder;->e(I)Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/network/NetworkClient$Builder;->g(Z)Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v4, 0x1

    .line 58
    invoke-virtual {v1, v4}, Lcom/yandex/metrica/network/NetworkClient$Builder;->c(Z)Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/yandex/metrica/network/NetworkClient$Builder;->a()Lcom/yandex/metrica/network/NetworkClient;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v5, "NetworkClient.Builder()\n\u2026rue)\n            .build()"

    .line 67
    .line 68
    invoke-static {v1, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/network/NetworkClient;->g(Lcom/yandex/metrica/network/Request;)Lcom/yandex/metrica/network/Call;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/yandex/metrica/network/Call;->execute()Lcom/yandex/metrica/network/Response;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "client.newCall(request).execute()"

    .line 80
    .line 81
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kb;->a:Lcom/yandex/metrica/impl/ob/jb;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/yandex/metrica/network/Response;->a()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const/16 v6, 0xc8

    .line 91
    .line 92
    if-ne v5, v6, :cond_0

    .line 93
    .line 94
    move v3, v4

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/network/Response;->e()[B

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    array-length v4, v4

    .line 100
    invoke-virtual {v0}, Lcom/yandex/metrica/network/Response;->a()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {v0}, Lcom/yandex/metrica/network/Response;->c()Ljava/lang/Throwable;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v6, " : "

    .line 127
    .line 128
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v6, "it"

    .line 132
    .line 133
    invoke-static {v0, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :cond_1
    new-instance v0, Lcom/yandex/metrica/impl/ob/jb$a;

    .line 148
    .line 149
    invoke-direct {v0, v3, v5, v4, v2}, Lcom/yandex/metrica/impl/ob/jb$a;-><init>(ZIILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/jb;->a(Lcom/yandex/metrica/impl/ob/jb$a;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method
