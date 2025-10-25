.class abstract Lcom/yandex/metrica/impl/ob/yk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/vk;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/vk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/metrica/impl/ob/vk;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/yk;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yk;->a:Ljava/util/List;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/yk;->b:Lcom/yandex/metrica/impl/ob/vk;

    .line 11
    .line 12
    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
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
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/yk;->b(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/yk;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v2, Lcom/yandex/metrica/impl/ob/Zk;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/yandex/metrica/impl/ob/Zk;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_7

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/yandex/metrica/impl/ob/zl;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/zl;->a:Lcom/yandex/metrica/impl/ob/zl$b;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_5

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    if-eq v2, v3, :cond_4

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    const/4 v4, 0x0

    .line 54
    if-eq v2, v3, :cond_3

    .line 55
    .line 56
    const/4 v3, 0x3

    .line 57
    if-eq v2, v3, :cond_2

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/zl;->b:Ljava/lang/String;

    .line 61
    .line 62
    :try_start_0
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 63
    .line 64
    .line 65
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-object v1, v4

    .line 68
    :goto_1
    if-eqz v1, :cond_6

    .line 69
    .line 70
    new-instance v4, Lcom/yandex/metrica/impl/ob/ok;

    .line 71
    .line 72
    invoke-direct {v4, v1}, Lcom/yandex/metrica/impl/ob/ok;-><init>(Ljava/util/regex/Pattern;)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/zl;->b:Ljava/lang/String;

    .line 77
    .line 78
    :try_start_1
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 79
    .line 80
    .line 81
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    goto :goto_2

    .line 83
    :catchall_1
    move-object v1, v4

    .line 84
    :goto_2
    if-eqz v1, :cond_6

    .line 85
    .line 86
    new-instance v4, Lcom/yandex/metrica/impl/ob/Nk;

    .line 87
    .line 88
    invoke-direct {v4, v1}, Lcom/yandex/metrica/impl/ob/Nk;-><init>(Ljava/util/regex/Pattern;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    new-instance v4, Lcom/yandex/metrica/impl/ob/jk;

    .line 93
    .line 94
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/zl;->b:Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {v4, v1}, Lcom/yandex/metrica/impl/ob/jk;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    new-instance v4, Lcom/yandex/metrica/impl/ob/tk;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/zl;->b:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {v4, v1}, Lcom/yandex/metrica/impl/ob/tk;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    :goto_3
    if-eqz v4, :cond_1

    .line 108
    .line 109
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->c(Ljava/util/Collection;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1
.end method


# virtual methods
.method a()Lcom/yandex/metrica/impl/ob/vk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yk;->b:Lcom/yandex/metrica/impl/ob/vk;

    return-object v0
.end method

.method abstract a(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/zl;",
            ">;"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yk;->a:Ljava/util/List;

    return-object v0
.end method

.method d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yk;->b:Lcom/yandex/metrica/impl/ob/vk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/vk;->a()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/yk;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yk;->a:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method
