.class Lcom/yandex/metrica/impl/ob/vk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/pm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pm<",
            "Lcom/yandex/metrica/impl/ob/wk;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/yandex/metrica/impl/ob/rl$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/xk;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/xk;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vk;->a:Lcom/yandex/metrica/impl/ob/pm;

    .line 10
    .line 11
    iput p2, p0, Lcom/yandex/metrica/impl/ob/vk;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/yandex/metrica/impl/ob/rl$b;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/yandex/metrica/impl/ob/vk;->b:I

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vk;->a:Lcom/yandex/metrica/impl/ob/pm;

    new-instance v1, Lcom/yandex/metrica/impl/ob/wk;

    invoke-direct {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/wk;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/pm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vk;->a:Lcom/yandex/metrica/impl/ob/pm;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/pm;->a()V

    return-void
.end method

.method a(ILjava/lang/String;ZLcom/yandex/metrica/impl/ob/rl$b;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/yandex/metrica/impl/ob/vk;->b:I

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vk;->a:Lcom/yandex/metrica/impl/ob/pm;

    new-instance v1, Lcom/yandex/metrica/impl/ob/wk;

    invoke-direct {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/wk;-><init>(ILjava/lang/String;)V

    new-instance p1, Landroid/util/Pair;

    .line 3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/pm;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
