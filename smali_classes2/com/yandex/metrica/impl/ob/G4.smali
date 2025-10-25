.class public Lcom/yandex/metrica/impl/ob/G4;
.super Lcom/yandex/metrica/impl/ob/K4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/K4<",
        "Lcom/yandex/metrica/impl/ob/M4;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/u5;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/F3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/K4;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/u5;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/u5;-><init>(Lcom/yandex/metrica/impl/ob/F3;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/G4;->a:Lcom/yandex/metrica/impl/ob/u5;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yandex/metrica/impl/ob/H4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/impl/ob/H4;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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
    const/16 v1, 0x10

    .line 15
    .line 16
    if-eq p1, v1, :cond_2

    .line 17
    .line 18
    const/16 v1, 0x18

    .line 19
    .line 20
    if-eq p1, v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x2f

    .line 23
    .line 24
    if-eq p1, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/G4;->a:Lcom/yandex/metrica/impl/ob/u5;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/u5;->c()Lcom/yandex/metrica/impl/ob/M4;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/G4;->a:Lcom/yandex/metrica/impl/ob/u5;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/u5;->b()Lcom/yandex/metrica/impl/ob/P4;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/G4;->a:Lcom/yandex/metrica/impl/ob/u5;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/u5;->a()Lcom/yandex/metrica/impl/ob/O4;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :goto_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/H4;

    .line 57
    .line 58
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/H4;-><init>(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    return-object p1
.end method
