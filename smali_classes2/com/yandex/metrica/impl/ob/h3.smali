.class public Lcom/yandex/metrica/impl/ob/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lzb/d;


# direct methods
.method public constructor <init>(Lzb/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/h3;->a:Lzb/d;

    .line 5
    .line 6
    return-void
.end method

.method private a(Lzb/c;)Lcom/yandex/metrica/impl/ob/uf$b$b;
    .locals 2

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/uf$b$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/uf$b$b;-><init>()V

    .line 36
    iget v1, p1, Lzb/c;->a:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/uf$b$b;->a:I

    .line 37
    iget-object p1, p1, Lzb/c;->b:Lzb/c$a;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    .line 39
    :cond_0
    iput v1, v0, Lcom/yandex/metrica/impl/ob/uf$b$b;->b:I

    return-object v0
.end method


# virtual methods
.method public a()[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/h3;->a:Lzb/d;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/uf;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/uf;-><init>()V

    .line 3
    iget v2, v0, Lzb/d;->c:I

    iput v2, v1, Lcom/yandex/metrica/impl/ob/uf;->a:I

    .line 4
    iget-wide v2, v0, Lzb/d;->d:J

    iput-wide v2, v1, Lcom/yandex/metrica/impl/ob/uf;->g:J

    .line 5
    iget-object v2, v0, Lzb/d;->e:Ljava/lang/String;

    .line 6
    :try_start_0
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v2, ""

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/uf;->c:[B

    .line 8
    iget-object v2, v0, Lzb/d;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/uf;->d:[B

    .line 9
    new-instance v2, Lcom/yandex/metrica/impl/ob/uf$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/uf$a;-><init>()V

    .line 10
    iget-object v3, v0, Lzb/d;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/uf$a;->a:[B

    .line 11
    iget-object v3, v0, Lzb/d;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/uf$a;->b:[B

    .line 12
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/uf;->f:Lcom/yandex/metrica/impl/ob/uf$a;

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, v1, Lcom/yandex/metrica/impl/ob/uf;->h:Z

    .line 14
    iput v2, v1, Lcom/yandex/metrica/impl/ob/uf;->i:I

    .line 15
    iget-object v3, v0, Lzb/d;->a:Lzb/e;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    .line 17
    :goto_1
    iput v2, v1, Lcom/yandex/metrica/impl/ob/uf;->j:I

    .line 18
    new-instance v2, Lcom/yandex/metrica/impl/ob/uf$c;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/uf$c;-><init>()V

    .line 19
    iget-object v3, v0, Lzb/d;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/uf$c;->a:[B

    .line 20
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v0, Lzb/d;->l:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/yandex/metrica/impl/ob/uf$c;->b:J

    .line 21
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/uf;->k:Lcom/yandex/metrica/impl/ob/uf$c;

    .line 22
    iget-object v2, v0, Lzb/d;->a:Lzb/e;

    sget-object v3, Lzb/e;->b:Lzb/e;

    if-ne v2, v3, :cond_3

    .line 23
    new-instance v2, Lcom/yandex/metrica/impl/ob/uf$b;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/uf$b;-><init>()V

    .line 24
    iget-boolean v3, v0, Lzb/d;->m:Z

    iput-boolean v3, v2, Lcom/yandex/metrica/impl/ob/uf$b;->a:Z

    .line 25
    iget-object v3, v0, Lzb/d;->i:Lzb/c;

    if-eqz v3, :cond_1

    .line 26
    invoke-direct {p0, v3}, Lcom/yandex/metrica/impl/ob/h3;->a(Lzb/c;)Lcom/yandex/metrica/impl/ob/uf$b$b;

    move-result-object v3

    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/uf$b;->b:Lcom/yandex/metrica/impl/ob/uf$b$b;

    .line 27
    :cond_1
    new-instance v3, Lcom/yandex/metrica/impl/ob/uf$b$a;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/uf$b$a;-><init>()V

    .line 28
    iget-wide v4, v0, Lzb/d;->f:J

    iput-wide v4, v3, Lcom/yandex/metrica/impl/ob/uf$b$a;->a:J

    .line 29
    iget-object v4, v0, Lzb/d;->g:Lzb/c;

    if-eqz v4, :cond_2

    .line 30
    invoke-direct {p0, v4}, Lcom/yandex/metrica/impl/ob/h3;->a(Lzb/c;)Lcom/yandex/metrica/impl/ob/uf$b$b;

    move-result-object v4

    iput-object v4, v3, Lcom/yandex/metrica/impl/ob/uf$b$a;->b:Lcom/yandex/metrica/impl/ob/uf$b$b;

    .line 31
    :cond_2
    iget v0, v0, Lzb/d;->h:I

    iput v0, v3, Lcom/yandex/metrica/impl/ob/uf$b$a;->c:I

    .line 32
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/uf$b;->c:Lcom/yandex/metrica/impl/ob/uf$b$a;

    .line 33
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/uf;->l:Lcom/yandex/metrica/impl/ob/uf$b;

    .line 34
    :cond_3
    invoke-static {v1}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method
