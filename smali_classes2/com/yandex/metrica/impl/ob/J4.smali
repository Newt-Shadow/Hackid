.class public Lcom/yandex/metrica/impl/ob/J4;
.super Lcom/yandex/metrica/impl/ob/K4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/K4<",
        "Lcom/yandex/metrica/impl/ob/X4;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/h5;

.field private final b:Lcom/yandex/metrica/impl/ob/K5;

.field private final c:Lcom/yandex/metrica/impl/ob/d5;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/K4;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/h5;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/h5;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/J4;->a:Lcom/yandex/metrica/impl/ob/h5;

    .line 10
    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/K5;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/K5;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/J4;->b:Lcom/yandex/metrica/impl/ob/K5;

    .line 17
    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/ob/d5;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/d5;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/J4;->c:Lcom/yandex/metrica/impl/ob/d5;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yandex/metrica/impl/ob/H4;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/a1;->a(I)Lcom/yandex/metrica/impl/ob/a1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq p1, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x28

    .line 21
    .line 22
    if-eq p1, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/J4;->b:Lcom/yandex/metrica/impl/ob/K5;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/J4;->a:Lcom/yandex/metrica/impl/ob/h5;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/J4;->c:Lcom/yandex/metrica/impl/ob/d5;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/J4;->a:Lcom/yandex/metrica/impl/ob/h5;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :goto_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/H4;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/H4;-><init>(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    return-object p1
.end method
