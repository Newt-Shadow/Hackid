.class public Lcom/yandex/metrica/impl/ob/Hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Gb;


# instance fields
.field private final a:I

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/yandex/metrica/impl/ob/Hb;->c:I

    .line 6
    .line 7
    iput p1, p0, Lcom/yandex/metrica/impl/ob/Hb;->a:I

    .line 8
    .line 9
    iput p2, p0, Lcom/yandex/metrica/impl/ob/Hb;->b:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Hb;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Hb;->c:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/yandex/metrica/impl/ob/Hb;->c:I

    .line 6
    .line 7
    iget v1, p0, Lcom/yandex/metrica/impl/ob/Hb;->a:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/Hb;->c:I

    .line 3
    .line 4
    return-void
.end method
