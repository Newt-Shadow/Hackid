.class Lcom/yandex/metrica/impl/ob/L1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/L1;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/mm<",
        "Lcom/yandex/metrica/impl/ob/Z6;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/L1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/L1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L1$a;->a:Lcom/yandex/metrica/impl/ob/L1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lcom/yandex/metrica/impl/ob/Z6;

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/L1$a;->a:Lcom/yandex/metrica/impl/ob/L1;

    .line 8
    .line 9
    new-instance v9, Lcom/yandex/metrica/impl/ob/i4;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->f()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->g()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->h()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->i()Lcom/yandex/metrica/CounterConfiguration$b;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    move-object v3, v9

    .line 32
    invoke-direct/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/i4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/yandex/metrica/CounterConfiguration$b;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->e()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->c()[B

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->b()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->j()Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->d()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z6;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget-object v8, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 64
    .line 65
    sget-object v8, Lcom/yandex/metrica/impl/ob/a1;->E:Lcom/yandex/metrica/impl/ob/a1;

    .line 66
    .line 67
    new-instance v10, Lcom/yandex/metrica/impl/ob/J;

    .line 68
    .line 69
    invoke-virtual {v8}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    invoke-direct {v10, v4, v3, v8, v0}, Lcom/yandex/metrica/impl/ob/J;-><init>([BLjava/lang/String;ILcom/yandex/metrica/impl/ob/cm;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10, v6}, Lcom/yandex/metrica/impl/ob/J;->a(Ljava/util/HashMap;)Lcom/yandex/metrica/impl/ob/J;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput v5, v0, Lcom/yandex/metrica/impl/ob/c0;->h:I

    .line 81
    .line 82
    invoke-virtual {v0, v7}, Lcom/yandex/metrica/impl/ob/c0;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v3, Lcom/yandex/metrica/impl/ob/D3;

    .line 87
    .line 88
    new-instance v4, Lcom/yandex/metrica/impl/ob/Mg$b;

    .line 89
    .line 90
    const/4 v11, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    const/4 v14, 0x0

    .line 94
    const/4 v15, 0x0

    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    const/16 v18, 0x0

    .line 100
    .line 101
    move-object v10, v4

    .line 102
    invoke-direct/range {v10 .. v18}, Lcom/yandex/metrica/impl/ob/Mg$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V

    .line 103
    .line 104
    .line 105
    new-instance v5, Lcom/yandex/metrica/impl/ob/D3$a;

    .line 106
    .line 107
    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/D3$a;-><init>()V

    .line 108
    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    invoke-direct {v3, v4, v5, v6}, Lcom/yandex/metrica/impl/ob/D3;-><init>(Lcom/yandex/metrica/impl/ob/Mg$b;Lcom/yandex/metrica/impl/ob/D3$a;Landroid/os/ResultReceiver;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v9, v0, v3}, Lcom/yandex/metrica/impl/ob/L1;->a(Lcom/yandex/metrica/impl/ob/i4;Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/D3;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
