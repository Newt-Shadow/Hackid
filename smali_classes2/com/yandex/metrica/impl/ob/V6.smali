.class public Lcom/yandex/metrica/impl/ob/V6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/T6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/T6;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/T6;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/V6;-><init>(Lcom/yandex/metrica/impl/ob/T6;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/T6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/V6;->a:Lcom/yandex/metrica/impl/ob/T6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/E6;)Lcom/yandex/metrica/impl/ob/kf;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/kf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kf;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/E6;->e:Ljava/lang/Integer;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    iput v1, v0, Lcom/yandex/metrica/impl/ob/kf;->e:I

    .line 17
    .line 18
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/E6;->d:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kf;->d:Ljava/lang/String;

    .line 21
    .line 22
    iget v1, p1, Lcom/yandex/metrica/impl/ob/E6;->b:I

    .line 23
    .line 24
    iput v1, v0, Lcom/yandex/metrica/impl/ob/kf;->b:I

    .line 25
    .line 26
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/E6;->a:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kf;->a:Ljava/lang/String;

    .line 29
    .line 30
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/E6;->c:J

    .line 31
    .line 32
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kf;->c:J

    .line 33
    .line 34
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/V6;->a:Lcom/yandex/metrica/impl/ob/T6;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/E6;->f:Ljava/util/List;

    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/StackTraceElement;

    .line 58
    .line 59
    new-instance v4, Lcom/yandex/metrica/impl/ob/D6;

    .line 60
    .line 61
    invoke-direct {v4, v3}, Lcom/yandex/metrica/impl/ob/D6;-><init>(Ljava/lang/StackTraceElement;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/T6;->a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/jf;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/kf;->f:[Lcom/yandex/metrica/impl/ob/jf;

    .line 73
    .line 74
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/E6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/V6;->a(Lcom/yandex/metrica/impl/ob/E6;)Lcom/yandex/metrica/impl/ob/kf;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/kf;

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
