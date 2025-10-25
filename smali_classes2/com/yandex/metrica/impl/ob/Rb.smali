.class Lcom/yandex/metrica/impl/ob/Rb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/mc;

.field private final b:Lcom/yandex/metrica/impl/ob/U7;

.field private final c:Lcom/yandex/metrica/impl/ob/T7;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Rb;->a:Lcom/yandex/metrica/impl/ob/mc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Rb;->b:Lcom/yandex/metrica/impl/ob/U7;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Rb;->c:Lcom/yandex/metrica/impl/ob/T7;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rb;->a:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Rb;->b:Lcom/yandex/metrica/impl/ob/U7;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/J7;->c()J

    move-result-wide v1

    iget v0, v0, Lcom/yandex/metrica/impl/ob/mc;->f:I

    int-to-long v3, v0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const v4, 0x3dcccccd    # 0.1f

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Rb;->b:Lcom/yandex/metrica/impl/ob/U7;

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/J7;->b(I)I

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rb;->a:Lcom/yandex/metrica/impl/ob/mc;

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Rb;->c:Lcom/yandex/metrica/impl/ob/T7;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/J7;->c()J

    move-result-wide v5

    iget v0, v0, Lcom/yandex/metrica/impl/ob/mc;->f:I

    int-to-long v7, v0

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Rb;->c:Lcom/yandex/metrica/impl/ob/T7;

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/J7;->b(I)I

    :cond_3
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Rb;->a:Lcom/yandex/metrica/impl/ob/mc;

    return-void
.end method
