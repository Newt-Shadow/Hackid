.class public Lcom/yandex/metrica/impl/ob/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:[I


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/vf$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    filled-new-array {v2, v3, v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/af;->c:[I

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/af;->c:[I

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/af;-><init>([I)V

    return-void
.end method

.method constructor <init>([I)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/af;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/yandex/metrica/impl/ob/af;->b:I

    .line 5
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 6
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/af;->a:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/af;->b:I

    return v0
.end method

.method public a(ILjava/lang/String;)Lcom/yandex/metrica/impl/ob/vf$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/af;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/vf$a;

    return-object p1
.end method

.method a(Lcom/yandex/metrica/impl/ob/vf$a;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/af;->a:Landroid/util/SparseArray;

    iget v1, p1, Lcom/yandex/metrica/impl/ob/vf$a;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/vf$a;->a:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/af;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/yandex/metrica/impl/ob/af;->b:I

    .line 6
    .line 7
    return-void
.end method

.method public c()Lcom/yandex/metrica/impl/ob/vf;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/vf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/vf;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/af;->a:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/af;->a:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/yandex/metrica/impl/ob/vf$a;

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/vf$a;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, [Lcom/yandex/metrica/impl/ob/vf$a;

    .line 70
    .line 71
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/vf;->a:[Lcom/yandex/metrica/impl/ob/vf$a;

    .line 72
    .line 73
    return-object v0
.end method
