.class public Lcom/yandex/metrica/impl/ob/Jd;
.super Lcom/yandex/metrica/impl/ob/Kd;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field private final f:Lcom/yandex/metrica/impl/ob/Rd;

.field private final g:Lcom/yandex/metrica/impl/ob/Rd;

.field private final h:Lcom/yandex/metrica/impl/ob/Rd;

.field private final i:Lcom/yandex/metrica/impl/ob/Rd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Kd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v0, "init_event_pref_key"

    .line 11
    .line 12
    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jd;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 16
    .line 17
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jd;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 23
    .line 24
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string v0, "first_event_pref_key"

    .line 31
    .line 32
    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jd;->h:Lcom/yandex/metrica/impl/ob/Rd;

    .line 36
    .line 37
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string v0, "fitst_event_description_key"

    .line 44
    .line 45
    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jd;->i:Lcom/yandex/metrica/impl/ob/Rd;

    .line 49
    .line 50
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/Rd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jd;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jd;->h:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "_initpreferences"

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jd;->f:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jd;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Jd;->a(Lcom/yandex/metrica/impl/ob/Rd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jd;->i:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Jd;->a(Lcom/yandex/metrica/impl/ob/Rd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jd;->h:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Jd;->a(Lcom/yandex/metrica/impl/ob/Rd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jd;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Jd;->a(Lcom/yandex/metrica/impl/ob/Rd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jd;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DONE"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Kd;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/Kd;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Kd;->b()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
