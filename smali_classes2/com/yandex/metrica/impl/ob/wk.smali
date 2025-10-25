.class public Lcom/yandex/metrica/impl/ob/wk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/yandex/metrica/impl/ob/wk;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/wk;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/wk;->a()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/yandex/metrica/impl/ob/wk;->c:I

    .line 13
    .line 14
    return-void
.end method

.method private a()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/wk;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/wk;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lcom/yandex/metrica/impl/ob/wk;

    .line 13
    .line 14
    if-eq v2, v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/wk;

    .line 18
    .line 19
    iget v1, p0, Lcom/yandex/metrica/impl/ob/wk;->a:I

    .line 20
    .line 21
    iget v2, p1, Lcom/yandex/metrica/impl/ob/wk;->a:I

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wk;->b:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/wk;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/wk;->c:I

    .line 2
    .line 3
    return v0
.end method
