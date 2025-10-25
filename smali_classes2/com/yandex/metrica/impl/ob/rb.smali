.class public abstract Lcom/yandex/metrica/impl/ob/rb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/rb$b;,
        Lcom/yandex/metrica/impl/ob/rb$a;
    }
.end annotation


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
.method public a(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/sb;
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/rb;->b(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/sb;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/sb;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/rb;->c(Landroid/content/pm/FeatureInfo;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-string v2, "openGlFeature"

    .line 21
    .line 22
    invoke-direct {v1, v2, v0, p1}, Lcom/yandex/metrica/impl/ob/sb;-><init>(Ljava/lang/String;IZ)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/rb;->b(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/sb;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method protected abstract b(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/sb;
.end method

.method c(Landroid/content/pm/FeatureInfo;)Z
    .locals 1

    .line 1
    iget p1, p1, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p1, v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method
