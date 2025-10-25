.class public Lcom/yandex/metrica/networktasks/api/FullUrlFormer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:I

.field private c:Ljava/lang/String;

.field private final d:Lcom/yandex/metrica/networktasks/api/IParamsAppender;

.field private final e:Lcom/yandex/metrica/networktasks/api/ConfigProvider;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/networktasks/api/IParamsAppender;Lcom/yandex/metrica/networktasks/api/ConfigProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->a:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->b:I

    iput-object p1, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->d:Lcom/yandex/metrica/networktasks/api/IParamsAppender;

    iput-object p2, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->e:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->a:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->b:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->e:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->d:Lcom/yandex/metrica/networktasks/api/IParamsAppender;

    .line 26
    .line 27
    invoke-interface {v2, v0, v1}, Lcom/yandex/metrica/networktasks/api/IParamsAppender;->appendParams(Landroid/net/Uri$Builder;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->c:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/networktasks/impl/b;

    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/networktasks/impl/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/impl/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->b:I

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->a:Ljava/util/List;

    return-void
.end method
