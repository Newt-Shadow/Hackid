.class public Lcom/yandex/metrica/impl/ob/X6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/W6;

.field private final b:Lcom/yandex/metrica/impl/ob/J6;

.field private final c:Lcom/yandex/metrica/impl/ob/L6;

.field private final d:Lcom/yandex/metrica/impl/ob/T6;

.field private final e:Lcom/yandex/metrica/impl/ob/Q6;

.field private final f:Lcom/yandex/metrica/impl/ob/R6;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v1, Lcom/yandex/metrica/impl/ob/W6;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/W6;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/J6;

    new-instance v0, Lcom/yandex/metrica/impl/ob/V6;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/V6;-><init>()V

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/J6;-><init>(Lcom/yandex/metrica/impl/ob/V6;)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/L6;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/L6;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/T6;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/T6;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/Q6;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Q6;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/R6;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/R6;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/X6;-><init>(Lcom/yandex/metrica/impl/ob/W6;Lcom/yandex/metrica/impl/ob/J6;Lcom/yandex/metrica/impl/ob/L6;Lcom/yandex/metrica/impl/ob/T6;Lcom/yandex/metrica/impl/ob/Q6;Lcom/yandex/metrica/impl/ob/R6;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/W6;Lcom/yandex/metrica/impl/ob/J6;Lcom/yandex/metrica/impl/ob/L6;Lcom/yandex/metrica/impl/ob/T6;Lcom/yandex/metrica/impl/ob/Q6;Lcom/yandex/metrica/impl/ob/R6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/X6;->b:Lcom/yandex/metrica/impl/ob/J6;

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/X6;->a:Lcom/yandex/metrica/impl/ob/W6;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/X6;->c:Lcom/yandex/metrica/impl/ob/L6;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/X6;->d:Lcom/yandex/metrica/impl/ob/T6;

    .line 7
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/X6;->e:Lcom/yandex/metrica/impl/ob/Q6;

    .line 8
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/X6;->f:Lcom/yandex/metrica/impl/ob/R6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/H6;)Lcom/yandex/metrica/impl/ob/gf;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/gf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gf;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->a:Lcom/yandex/metrica/impl/ob/F6;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/X6;->a:Lcom/yandex/metrica/impl/ob/W6;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/W6;->a(Lcom/yandex/metrica/impl/ob/F6;)Lcom/yandex/metrica/impl/ob/lf;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->a:Lcom/yandex/metrica/impl/ob/lf;

    .line 17
    .line 18
    :cond_0
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->b:Lcom/yandex/metrica/impl/ob/w6;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/X6;->b:Lcom/yandex/metrica/impl/ob/J6;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/J6;->a(Lcom/yandex/metrica/impl/ob/w6;)Lcom/yandex/metrica/impl/ob/df;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->b:Lcom/yandex/metrica/impl/ob/df;

    .line 29
    .line 30
    :cond_1
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->c:Ljava/util/List;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/X6;->d:Lcom/yandex/metrica/impl/ob/T6;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/T6;->a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/jf;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->e:[Lcom/yandex/metrica/impl/ob/jf;

    .line 41
    .line 42
    :cond_2
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->g:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->c:Ljava/lang/String;

    .line 47
    .line 48
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X6;->c:Lcom/yandex/metrica/impl/ob/L6;

    .line 49
    .line 50
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/H6;->h:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/F1;->a(Ljava/lang/Boolean;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v1, v0, Lcom/yandex/metrica/impl/ob/gf;->d:I

    .line 57
    .line 58
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->d:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X6;->e:Lcom/yandex/metrica/impl/ob/Q6;

    .line 67
    .line 68
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/H6;->d:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Q6;->a(Ljava/lang/String;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->h:[B

    .line 75
    .line 76
    :cond_4
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->e:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->e:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/gf;->i:[B

    .line 91
    .line 92
    :cond_5
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->f:Ljava/util/Map;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_6

    .line 99
    .line 100
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X6;->f:Lcom/yandex/metrica/impl/ob/R6;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/H6;->f:Ljava/util/Map;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/R6;->a(Ljava/util/Map;)[Lcom/yandex/metrica/impl/ob/ff;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/gf;->j:[Lcom/yandex/metrica/impl/ob/ff;

    .line 109
    .line 110
    :cond_6
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/H6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/X6;->a(Lcom/yandex/metrica/impl/ob/H6;)Lcom/yandex/metrica/impl/ob/gf;

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
