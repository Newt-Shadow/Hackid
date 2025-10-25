.class public Lcom/yandex/metrica/impl/ob/P6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# static fields
.field private static final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/yandex/metrica/impl/ob/g7;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Lcom/yandex/metrica/impl/ob/g7;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/yandex/metrica/impl/ob/P6;->a:Ljava/util/EnumMap;

    .line 9
    .line 10
    sget-object v1, Lcom/yandex/metrica/impl/ob/g7;->a:Lcom/yandex/metrica/impl/ob/g7;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/yandex/metrica/impl/ob/g7;->c:Lcom/yandex/metrica/impl/ob/g7;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/yandex/metrica/impl/ob/g7;->d:Lcom/yandex/metrica/impl/ob/g7;

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

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
.method public a(Lcom/yandex/metrica/impl/ob/d7;)Lcom/yandex/metrica/impl/ob/gf;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/gf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gf;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lcom/yandex/metrica/impl/ob/gf;->f:I

    .line 8
    .line 9
    new-instance v1, Lcom/yandex/metrica/impl/ob/gf$a;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/gf$a;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/gf$a;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d7;->a()[B

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/gf$a;->a:[B

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d7;->b()Lcom/yandex/metrica/impl/ob/c7;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/gf$a;

    .line 27
    .line 28
    new-instance v2, Lcom/yandex/metrica/impl/ob/if;

    .line 29
    .line 30
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/if;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/gf$a;->b:Lcom/yandex/metrica/impl/ob/if;

    .line 34
    .line 35
    sget-object v1, Lcom/yandex/metrica/impl/ob/P6;->a:Ljava/util/EnumMap;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c7;->b()Lcom/yandex/metrica/impl/ob/g7;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/Integer;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/gf$a;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/gf$a;->b:Lcom/yandex/metrica/impl/ob/if;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, v2, Lcom/yandex/metrica/impl/ob/if;->a:I

    .line 58
    .line 59
    :cond_0
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->g:Lcom/yandex/metrica/impl/ob/gf$a;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/gf$a;->b:Lcom/yandex/metrica/impl/ob/if;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c7;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    const-string p1, ""

    .line 70
    .line 71
    :cond_1
    iput-object p1, v1, Lcom/yandex/metrica/impl/ob/if;->b:Ljava/lang/String;

    .line 72
    .line 73
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/d7;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/P6;->a(Lcom/yandex/metrica/impl/ob/d7;)Lcom/yandex/metrica/impl/ob/gf;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/gf;

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
