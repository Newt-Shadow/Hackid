.class public Lcom/yandex/metrica/impl/ob/a9;
.super Lcom/yandex/metrica/impl/ob/d9;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final c:Lcom/yandex/metrica/impl/ob/Rd;

.field private final d:Lcom/yandex/metrica/impl/ob/Rd;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/S7;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/d9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 5
    .line 6
    const-string v0, "init_event_pref_key"

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/a9;->c:Lcom/yandex/metrica/impl/ob/Rd;

    .line 12
    .line 13
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 14
    .line 15
    const-string v0, "first_event_pref_key"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/a9;->d:Lcom/yandex/metrica/impl/ob/Rd;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public f()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a9;->d:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/a9;->c:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a9;->c:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Lcom/yandex/metrica/impl/ob/a9;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a9;->d:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/yandex/metrica/impl/ob/a9;

    .line 12
    .line 13
    return-object v0
.end method

.method public i()Lcom/yandex/metrica/impl/ob/a9;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a9;->c:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/yandex/metrica/impl/ob/a9;

    .line 12
    .line 13
    return-object v0
.end method

.method public j()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a9;->d:Lcom/yandex/metrica/impl/ob/Rd;

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
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public k()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a9;->c:Lcom/yandex/metrica/impl/ob/Rd;

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
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
