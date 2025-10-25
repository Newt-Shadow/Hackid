.class public abstract Lcom/yandex/metrica/impl/ob/Se;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bf;
.implements Lcom/yandex/metrica/impl/ob/Ie;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/Ke;

.field private e:Lcom/yandex/metrica/impl/ob/cm;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/Ke;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/yandex/metrica/impl/ob/Se;->b:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Se;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Se;->c:Lcom/yandex/metrica/impl/ob/Kn;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Se;->d:Lcom/yandex/metrica/impl/ob/Ke;

    .line 11
    .line 12
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Ul;->a()Lcom/yandex/metrica/impl/ob/cm;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Se;->e:Lcom/yandex/metrica/impl/ob/cm;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/metrica/impl/ob/vf$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/vf$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/vf$a;-><init>()V

    .line 2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/Se;->b:I

    .line 3
    iput v1, v0, Lcom/yandex/metrica/impl/ob/vf$a;->b:I

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Se;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/vf$a;->a:[B

    .line 6
    new-instance v1, Lcom/yandex/metrica/impl/ob/vf$c;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/vf$c;-><init>()V

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    .line 7
    new-instance v1, Lcom/yandex/metrica/impl/ob/vf$b;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/vf$b;-><init>()V

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Se;->e:Lcom/yandex/metrica/impl/ob/cm;

    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/Ke;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Se;->d:Lcom/yandex/metrica/impl/ob/Ke;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Se;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Se;->b:I

    .line 2
    .line 3
    return v0
.end method

.method protected e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Se;->c:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Se;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/In;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Se;->e:Lcom/yandex/metrica/impl/ob/cm;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Se;->e:Lcom/yandex/metrica/impl/ob/cm;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "Attribute "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Se;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " of type "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v3, p0, Lcom/yandex/metrica/impl/ob/Se;->b:I

    .line 48
    .line 49
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Ze;->a(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, " is skipped because "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/In;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/coreutils/logger/a;->w(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    const/4 v0, 0x0

    .line 76
    return v0
.end method
