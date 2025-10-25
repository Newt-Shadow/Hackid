.class public abstract Lcom/yandex/metrica/impl/ob/pj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/S;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Lcom/yandex/metrica/impl/ob/Sh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "["

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "]"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/pj;->a:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method private b(Landroid/telephony/CellInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pj;->b:Lcom/yandex/metrica/impl/ob/Sh;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, v0, Lcom/yandex/metrica/impl/ob/Sh;->t:Z

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p1

    .line 4
    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/Sh;->u:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            "Lcom/yandex/metrica/impl/ob/uj$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/pj;->b(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/pj;->b(Landroid/telephony/CellInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/pj;->c(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Sh;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/pj;->b:Lcom/yandex/metrica/impl/ob/Sh;

    return-void
.end method

.method protected abstract b(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            "Lcom/yandex/metrica/impl/ob/uj$a;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract c(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            "Lcom/yandex/metrica/impl/ob/uj$a;",
            ")V"
        }
    .end annotation
.end method
