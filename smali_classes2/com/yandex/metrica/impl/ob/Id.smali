.class public Lcom/yandex/metrica/impl/ob/Id;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/Jd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Id$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Id$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/yandex/metrica/impl/ob/Id;->b:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Jd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Id;->a:Lcom/yandex/metrica/impl/ob/Jd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Id;->a:Lcom/yandex/metrica/impl/ob/Jd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Jd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Id;->a:Lcom/yandex/metrica/impl/ob/Jd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Jd;->j()V

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Id;->a:Lcom/yandex/metrica/impl/ob/Jd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Jd;->f()V

    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Id;->a:Lcom/yandex/metrica/impl/ob/Jd;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v2, "init_event_pref_key"

    invoke-direct {v1, v2, p1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, v0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Id;->a:Lcom/yandex/metrica/impl/ob/Jd;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Jd;->j()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Id;->a:Lcom/yandex/metrica/impl/ob/Jd;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/yandex/metrica/impl/ob/Id;->b:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const-string v3, "init_event_pref_key"

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    sget v4, Lcom/yandex/metrica/impl/ob/Jd;->j:I

    .line 34
    .line 35
    new-instance v4, Lcom/yandex/metrica/impl/ob/Rd;

    .line 36
    .line 37
    invoke-direct {v4, v3, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :catchall_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/String;

    .line 72
    .line 73
    :try_start_0
    sget v4, Lcom/yandex/metrica/impl/ob/Jd;->j:I

    .line 74
    .line 75
    const-string v4, ""

    .line 76
    .line 77
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v2, 0x1

    .line 98
    if-ne v0, v2, :cond_2

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    const/4 v0, 0x0

    .line 112
    :goto_2
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/Id;->a(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Id;->b:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Id;->a:Lcom/yandex/metrica/impl/ob/Jd;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Kd;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Id;->a:Lcom/yandex/metrica/impl/ob/Jd;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget v2, Lcom/yandex/metrica/impl/ob/Jd;->j:I

    .line 28
    .line 29
    new-instance v2, Lcom/yandex/metrica/impl/ob/Rd;

    .line 30
    .line 31
    const-string v3, "init_event_pref_key"

    .line 32
    .line 33
    invoke-direct {v2, v3, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "DONE"

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/Id;->a(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method
