.class public Lcom/yandex/metrica/impl/ob/S6;
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

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/S6;-><init>(Lcom/yandex/metrica/impl/ob/W6;Lcom/yandex/metrica/impl/ob/J6;Lcom/yandex/metrica/impl/ob/L6;Lcom/yandex/metrica/impl/ob/T6;Lcom/yandex/metrica/impl/ob/Q6;Lcom/yandex/metrica/impl/ob/R6;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/W6;Lcom/yandex/metrica/impl/ob/J6;Lcom/yandex/metrica/impl/ob/L6;Lcom/yandex/metrica/impl/ob/T6;Lcom/yandex/metrica/impl/ob/Q6;Lcom/yandex/metrica/impl/ob/R6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/S6;->a:Lcom/yandex/metrica/impl/ob/W6;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/S6;->b:Lcom/yandex/metrica/impl/ob/J6;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/S6;->c:Lcom/yandex/metrica/impl/ob/L6;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/S6;->d:Lcom/yandex/metrica/impl/ob/T6;

    .line 7
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/S6;->e:Lcom/yandex/metrica/impl/ob/Q6;

    .line 8
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/S6;->f:Lcom/yandex/metrica/impl/ob/R6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/B6;)Lcom/yandex/metrica/impl/ob/hf;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/hf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/hf;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/B6;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/hf;->f:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    move-object v1, v2

    .line 13
    :cond_0
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/B6;->b:Lcom/yandex/metrica/impl/ob/H6;

    .line 16
    .line 17
    if-eqz p1, :cond_7

    .line 18
    .line 19
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->a:Lcom/yandex/metrica/impl/ob/F6;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/S6;->a:Lcom/yandex/metrica/impl/ob/W6;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/W6;->a(Lcom/yandex/metrica/impl/ob/F6;)Lcom/yandex/metrica/impl/ob/lf;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/lf;

    .line 30
    .line 31
    :cond_1
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->b:Lcom/yandex/metrica/impl/ob/w6;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/S6;->b:Lcom/yandex/metrica/impl/ob/J6;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/J6;->a(Lcom/yandex/metrica/impl/ob/w6;)Lcom/yandex/metrica/impl/ob/df;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/df;

    .line 42
    .line 43
    :cond_2
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->c:Ljava/util/List;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/S6;->d:Lcom/yandex/metrica/impl/ob/T6;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/T6;->a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/jf;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->e:[Lcom/yandex/metrica/impl/ob/jf;

    .line 54
    .line 55
    :cond_3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->g:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/hf;->c:Ljava/lang/String;

    .line 58
    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    move-object v1, v2

    .line 62
    :cond_4
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->c:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/S6;->c:Lcom/yandex/metrica/impl/ob/L6;

    .line 65
    .line 66
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/H6;->h:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/F1;->a(Ljava/lang/Boolean;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput v1, v0, Lcom/yandex/metrica/impl/ob/hf;->d:I

    .line 73
    .line 74
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->d:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_5

    .line 81
    .line 82
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/S6;->e:Lcom/yandex/metrica/impl/ob/Q6;

    .line 83
    .line 84
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/H6;->d:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Q6;->a(Ljava/lang/String;)[B

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->i:[B

    .line 91
    .line 92
    :cond_5
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->e:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_6

    .line 99
    .line 100
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->e:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->j:[B

    .line 107
    .line 108
    :cond_6
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->f:Ljava/util/Map;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_7

    .line 115
    .line 116
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/S6;->f:Lcom/yandex/metrica/impl/ob/R6;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/H6;->f:Ljava/util/Map;

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/R6;->a(Ljava/util/Map;)[Lcom/yandex/metrica/impl/ob/ff;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/hf;->k:[Lcom/yandex/metrica/impl/ob/ff;

    .line 125
    .line 126
    :cond_7
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/B6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/S6;->a(Lcom/yandex/metrica/impl/ob/B6;)Lcom/yandex/metrica/impl/ob/hf;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/hf;

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
