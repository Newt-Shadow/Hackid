.class public Lcom/yandex/metrica/impl/ob/V9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/eh;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ff;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ff;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/eh;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/eh;->a:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge v2, v3, :cond_1

    .line 27
    .line 28
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 29
    .line 30
    iget-object v4, p1, Lcom/yandex/metrica/impl/ob/eh;->a:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/yandex/metrica/impl/ob/hh;

    .line 37
    .line 38
    new-instance v5, Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 39
    .line 40
    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Ff$a;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v6, v4, Lcom/yandex/metrica/impl/ob/hh;->a:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/Ff$a;->a:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, v4, Lcom/yandex/metrica/impl/ob/hh;->b:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    new-array v6, v6, [Ljava/lang/String;

    .line 54
    .line 55
    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/Ff$a;->b:[Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move v6, v1

    .line 62
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_0

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Ljava/lang/String;

    .line 73
    .line 74
    iget-object v8, v5, Lcom/yandex/metrica/impl/ob/Ff$a;->b:[Ljava/lang/String;

    .line 75
    .line 76
    aput-object v7, v8, v6

    .line 77
    .line 78
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    aput-object v5, v3, v2

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/eh;->b:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/Ff;->b:Ljava/lang/String;

    .line 89
    .line 90
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/eh;->c:J

    .line 91
    .line 92
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/Ff;->c:J

    .line 93
    .line 94
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/eh;->d:Z

    .line 95
    .line 96
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/Ff;->d:Z

    .line 97
    .line 98
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/eh;->e:Z

    .line 99
    .line 100
    iput-boolean p1, v0, Lcom/yandex/metrica/impl/ob/Ff;->e:Z

    .line 101
    .line 102
    return-object v0
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Ff;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v2, v0

    .line 13
    :goto_0
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 14
    .line 15
    array-length v4, v3

    .line 16
    if-ge v2, v4, :cond_2

    .line 17
    .line 18
    aget-object v3, v3, v2

    .line 19
    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v5, v3, Lcom/yandex/metrica/impl/ob/Ff$a;->b:[Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    array-length v5, v5

    .line 30
    if-lez v5, :cond_0

    .line 31
    .line 32
    new-instance v4, Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v5, v3, Lcom/yandex/metrica/impl/ob/Ff$a;->b:[Ljava/lang/String;

    .line 35
    .line 36
    array-length v5, v5

    .line 37
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    move v5, v0

    .line 41
    :goto_1
    iget-object v6, v3, Lcom/yandex/metrica/impl/ob/Ff$a;->b:[Ljava/lang/String;

    .line 42
    .line 43
    array-length v7, v6

    .line 44
    if-ge v5, v7, :cond_0

    .line 45
    .line 46
    aget-object v6, v6, v5

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    new-instance v5, Lcom/yandex/metrica/impl/ob/hh;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/Ff$a;->a:Ljava/lang/String;

    .line 57
    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    const-string v3, ""

    .line 61
    .line 62
    :cond_1
    invoke-direct {v5, v3, v4}, Lcom/yandex/metrica/impl/ob/hh;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance v7, Lcom/yandex/metrica/impl/ob/eh;

    .line 72
    .line 73
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Ff;->b:Ljava/lang/String;

    .line 74
    .line 75
    iget-wide v3, p1, Lcom/yandex/metrica/impl/ob/Ff;->c:J

    .line 76
    .line 77
    iget-boolean v5, p1, Lcom/yandex/metrica/impl/ob/Ff;->d:Z

    .line 78
    .line 79
    iget-boolean v6, p1, Lcom/yandex/metrica/impl/ob/Ff;->e:Z

    .line 80
    .line 81
    move-object v0, v7

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/eh;-><init>(Ljava/util/List;Ljava/lang/String;JZZ)V

    .line 83
    .line 84
    .line 85
    return-object v7
.end method
