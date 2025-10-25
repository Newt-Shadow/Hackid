.class public Lcom/yandex/metrica/impl/ob/Zm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/cm;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Zm;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Zm;->b:Lcom/yandex/metrica/impl/ob/cm;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Zm;->b:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Zm;->b:Lcom/yandex/metrica/impl/ob/cm;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Zm;->a:Ljava/lang/String;

    const/16 v2, 0x1194

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The %s has reached the total size limit that equals %d symbols. Item with key %s will be ignored"

    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/coreutils/logger/a;->fw(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/am;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/am;->a()I

    move-result v0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr v0, p3

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    :goto_0
    const/16 p1, 0x1194

    if-le v0, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
