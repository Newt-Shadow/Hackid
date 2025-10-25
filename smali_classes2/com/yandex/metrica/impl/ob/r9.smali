.class public Lcom/yandex/metrica/impl/ob/r9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/u9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/u9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/u9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/r9;-><init>(Lcom/yandex/metrica/impl/ob/u9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/u9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/r9;->a:Lcom/yandex/metrica/impl/ob/u9;

    return-void
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/td;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/wf;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/wf;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/td;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/wf$b;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/wf;->a:[Lcom/yandex/metrica/impl/ob/wf$b;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/td;->a:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/yandex/metrica/impl/ob/Bd;

    .line 37
    .line 38
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/wf;->a:[Lcom/yandex/metrica/impl/ob/wf$b;

    .line 39
    .line 40
    new-instance v6, Lcom/yandex/metrica/impl/ob/wf$b;

    .line 41
    .line 42
    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/wf$b;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v7, v4, Lcom/yandex/metrica/impl/ob/Bd;->a:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v7, v6, Lcom/yandex/metrica/impl/ob/wf$b;->a:Ljava/lang/String;

    .line 48
    .line 49
    iget-boolean v4, v4, Lcom/yandex/metrica/impl/ob/Bd;->b:Z

    .line 50
    .line 51
    iput-boolean v4, v6, Lcom/yandex/metrica/impl/ob/wf$b;->b:Z

    .line 52
    .line 53
    aput-object v6, v5, v3

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/td;->b:Lcom/yandex/metrica/impl/ob/z;

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/r9;->a:Lcom/yandex/metrica/impl/ob/u9;

    .line 63
    .line 64
    invoke-virtual {v3, v1}, Lcom/yandex/metrica/impl/ob/u9;->a(Lcom/yandex/metrica/impl/ob/z;)Lcom/yandex/metrica/impl/ob/wf$a;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/wf;->b:Lcom/yandex/metrica/impl/ob/wf$a;

    .line 69
    .line 70
    :cond_1
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/td;->c:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    new-array v1, v1, [Ljava/lang/String;

    .line 77
    .line 78
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/wf;->c:[Ljava/lang/String;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/td;->c:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Ljava/lang/String;

    .line 97
    .line 98
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/wf;->c:[Ljava/lang/String;

    .line 99
    .line 100
    aput-object v1, v3, v2

    .line 101
    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    return-object v0
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/wf;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/wf;->a:[Lcom/yandex/metrica/impl/ob/wf$b;

    .line 11
    .line 12
    array-length v4, v3

    .line 13
    if-ge v2, v4, :cond_0

    .line 14
    .line 15
    aget-object v3, v3, v2

    .line 16
    .line 17
    new-instance v4, Lcom/yandex/metrica/impl/ob/Bd;

    .line 18
    .line 19
    iget-object v5, v3, Lcom/yandex/metrica/impl/ob/wf$b;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v3, v3, Lcom/yandex/metrica/impl/ob/wf$b;->b:Z

    .line 22
    .line 23
    invoke-direct {v4, v5, v3}, Lcom/yandex/metrica/impl/ob/Bd;-><init>(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/wf;->b:Lcom/yandex/metrica/impl/ob/wf$a;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/r9;->a:Lcom/yandex/metrica/impl/ob/u9;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Lcom/yandex/metrica/impl/ob/u9;->a(Lcom/yandex/metrica/impl/ob/wf$a;)Lcom/yandex/metrica/impl/ob/z;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v2, 0x0

    .line 44
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    :goto_2
    iget-object v4, p1, Lcom/yandex/metrica/impl/ob/wf;->c:[Ljava/lang/String;

    .line 50
    .line 51
    array-length v5, v4

    .line 52
    if-ge v1, v5, :cond_2

    .line 53
    .line 54
    aget-object v4, v4, v1

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    new-instance p1, Lcom/yandex/metrica/impl/ob/td;

    .line 63
    .line 64
    invoke-direct {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/td;-><init>(Ljava/util/List;Lcom/yandex/metrica/impl/ob/z;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    return-object p1
.end method
