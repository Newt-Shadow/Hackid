.class public Lcom/yandex/metrica/impl/ob/M7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/N7;

.field private final b:Lcom/yandex/metrica/impl/ob/P7;

.field private final c:Lcom/yandex/metrica/impl/ob/X7$b;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/N7;Lcom/yandex/metrica/impl/ob/P7;Lcom/yandex/metrica/impl/ob/X7$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/M7;->b:Lcom/yandex/metrica/impl/ob/P7;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/M7;->c:Lcom/yandex/metrica/impl/ob/X7$b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/X7;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yandex/metrica/impl/ob/j8$b;->a:Ljava/util/List;

    .line 7
    .line 8
    const-string v2, "binary_data"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/M7;->c:Lcom/yandex/metrica/impl/ob/X7$b;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->a()Lcom/yandex/metrica/impl/ob/k8;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->b()Lcom/yandex/metrica/impl/ob/k8;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    new-instance v7, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v8, Lcom/yandex/metrica/impl/ob/Z7;

    .line 33
    .line 34
    const-string v1, "auto_inapp"

    .line 35
    .line 36
    invoke-direct {v8, v1, v0}, Lcom/yandex/metrica/impl/ob/Z7;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 37
    .line 38
    .line 39
    const-string v4, "auto_inapp"

    .line 40
    .line 41
    invoke-virtual/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/X7$b;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/k8;Lcom/yandex/metrica/impl/ob/k8;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/Y7;)Lcom/yandex/metrica/impl/ob/X7;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/X7;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yandex/metrica/impl/ob/j8$c;->a:Ljava/util/List;

    .line 7
    .line 8
    const-string v2, "preferences"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/M7;->c:Lcom/yandex/metrica/impl/ob/X7$b;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->c()Lcom/yandex/metrica/impl/ob/k8;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->d()Lcom/yandex/metrica/impl/ob/k8;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    new-instance v7, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v8, Lcom/yandex/metrica/impl/ob/Z7;

    .line 33
    .line 34
    const-string v1, "metrica.db"

    .line 35
    .line 36
    invoke-direct {v8, v1, v0}, Lcom/yandex/metrica/impl/ob/Z7;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 37
    .line 38
    .line 39
    const-string v4, "client storage"

    .line 40
    .line 41
    invoke-virtual/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/X7$b;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/k8;Lcom/yandex/metrica/impl/ob/k8;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/Y7;)Lcom/yandex/metrica/impl/ob/X7;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/X7;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/M7;->c:Lcom/yandex/metrica/impl/ob/X7$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->e()Lcom/yandex/metrica/impl/ob/k8;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->f()Lcom/yandex/metrica/impl/ob/k8;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->l()Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v5, Lcom/yandex/metrica/impl/ob/Z7;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->b:Lcom/yandex/metrica/impl/ob/P7;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/P7;->a()Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v6, "main"

    .line 30
    .line 31
    invoke-direct {v5, v6, v1}, Lcom/yandex/metrica/impl/ob/Z7;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "main"

    .line 35
    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/X7$b;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/k8;Lcom/yandex/metrica/impl/ob/k8;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/Y7;)Lcom/yandex/metrica/impl/ob/X7;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/X7;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yandex/metrica/impl/ob/j8$c;->a:Ljava/util/List;

    .line 7
    .line 8
    const-string v2, "preferences"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/M7;->c:Lcom/yandex/metrica/impl/ob/X7$b;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->g()Lcom/yandex/metrica/impl/ob/k8;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->h()Lcom/yandex/metrica/impl/ob/k8;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    new-instance v7, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v8, Lcom/yandex/metrica/impl/ob/Z7;

    .line 33
    .line 34
    const-string v1, "metrica_multiprocess.db"

    .line 35
    .line 36
    invoke-direct {v8, v1, v0}, Lcom/yandex/metrica/impl/ob/Z7;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 37
    .line 38
    .line 39
    const-string v4, "metrica_multiprocess.db"

    .line 40
    .line 41
    invoke-virtual/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/X7$b;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/k8;Lcom/yandex/metrica/impl/ob/k8;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/Y7;)Lcom/yandex/metrica/impl/ob/X7;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/X7;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yandex/metrica/impl/ob/j8$c;->a:Ljava/util/List;

    .line 7
    .line 8
    const-string v2, "preferences"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/yandex/metrica/impl/ob/j8$b;->a:Ljava/util/List;

    .line 14
    .line 15
    const-string v3, "binary_data"

    .line 16
    .line 17
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v2, "startup"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/yandex/metrica/impl/ob/j8$a;->a:Ljava/util/List;

    .line 26
    .line 27
    const-string v2, "l_dat"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v2, "lbs_dat"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/M7;->c:Lcom/yandex/metrica/impl/ob/X7$b;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->i()Lcom/yandex/metrica/impl/ob/k8;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->j()Lcom/yandex/metrica/impl/ob/k8;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M7;->a:Lcom/yandex/metrica/impl/ob/N7;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/N7;->k()Landroid/util/SparseArray;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    new-instance v8, Lcom/yandex/metrica/impl/ob/Z7;

    .line 58
    .line 59
    const-string v1, "metrica.db"

    .line 60
    .line 61
    invoke-direct {v8, v1, v0}, Lcom/yandex/metrica/impl/ob/Z7;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 62
    .line 63
    .line 64
    const-string v4, "metrica.db"

    .line 65
    .line 66
    invoke-virtual/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/X7$b;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/k8;Lcom/yandex/metrica/impl/ob/k8;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/Y7;)Lcom/yandex/metrica/impl/ob/X7;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method
