.class public final Lcom/yandex/metrica/impl/ob/D4$a;
.super Lcom/yandex/metrica/impl/ob/Eg$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/D4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Eg$a<",
        "Lcom/yandex/metrica/impl/ob/D3$a;",
        "Lcom/yandex/metrica/impl/ob/D4$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/D3$a;)V
    .locals 6

    .line 5
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/D4$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Eg$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/D4$a;->d:Ljava/lang/String;

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    invoke-static {p5, p1}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/D4$a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/D3$a;

    .line 2
    .line 3
    new-instance v6, Lcom/yandex/metrica/impl/ob/D4$a;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Eg$a;->a:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v1, v0

    .line 13
    :goto_0
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Eg$a;->b:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object v2, v0

    .line 21
    :goto_1
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Eg$a;->c:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object v3, v0

    .line 29
    :goto_2
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/D4$a;->d:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-object v4, v0

    .line 37
    :goto_3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/D4$a;->e:Z

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez p1, :cond_4

    .line 46
    .line 47
    move-object v5, v0

    .line 48
    goto :goto_4

    .line 49
    :cond_4
    move-object v5, p1

    .line 50
    :goto_4
    move-object v0, v6

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/D4$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    .line 53
    .line 54
    return-object v6
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/D3$a;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Eg$a;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Eg$a;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Eg$a;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/D4$a;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 58
    :goto_2
    return p1
.end method
