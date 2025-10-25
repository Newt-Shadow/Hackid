.class public Lcom/yandex/metrica/impl/ob/Ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Fa;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ca;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ca;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ca;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Ba;-><init>(Lcom/yandex/metrica/impl/ob/Ca;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ca;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ba;->a:Lcom/yandex/metrica/impl/ob/Ca;

    return-void
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Ta;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/yandex/metrica/impl/ob/mf$b;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/mf$b;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mf;->e:Lcom/yandex/metrica/impl/ob/mf$b;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ba;->a:Lcom/yandex/metrica/impl/ob/Ca;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Ta;->c:Lcom/yandex/metrica/impl/ob/Ua;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Ca;->a(Lcom/yandex/metrica/impl/ob/Ua;)Lcom/yandex/metrica/impl/ob/Na;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/mf;->e:Lcom/yandex/metrica/impl/ob/mf$b;

    .line 24
    .line 25
    iget-object v3, v1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$c;

    .line 28
    .line 29
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/mf$b;->a:Lcom/yandex/metrica/impl/ob/mf$c;

    .line 30
    .line 31
    iget p1, p1, Lcom/yandex/metrica/impl/ob/Ta;->b:I

    .line 32
    .line 33
    iput p1, v0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    aput-object v1, p1, v2

    .line 40
    .line 41
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 46
    .line 47
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
