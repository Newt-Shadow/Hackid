.class public Lcom/yandex/metrica/impl/ob/U1$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/U1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/c0;

.field private b:Lcom/yandex/metrica/impl/ob/Q1;

.field private c:Z

.field private d:Lcom/yandex/metrica/impl/ob/U1$e;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/yandex/metrica/impl/ob/J$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/U1$f;->c:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->a:Lcom/yandex/metrica/impl/ob/c0;

    .line 8
    .line 9
    new-instance p1, Lcom/yandex/metrica/impl/ob/Q1;

    .line 10
    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/A3;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/z3;->a()Lcom/yandex/metrica/impl/ob/A3;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/A3;-><init>(Lcom/yandex/metrica/impl/ob/A3;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/yandex/metrica/CounterConfiguration;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Q1;->e()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, v0, v1, p2}, Lcom/yandex/metrica/impl/ob/Q1;-><init>(Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 37
    .line 38
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/U1$f;)Lcom/yandex/metrica/impl/ob/Q1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/U1$f;->b:Lcom/yandex/metrica/impl/ob/Q1;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/Q1;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U1$f;->b:Lcom/yandex/metrica/impl/ob/Q1;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/U1$e;)Lcom/yandex/metrica/impl/ob/U1$f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->d:Lcom/yandex/metrica/impl/ob/U1$e;

    return-object p0
.end method

.method public a(Ljava/util/HashMap;)Lcom/yandex/metrica/impl/ob/U1$f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/yandex/metrica/impl/ob/J$a;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/U1$f;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method public a(Z)Lcom/yandex/metrica/impl/ob/U1$f;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->c:Z

    return-object p0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U1$f;->a:Lcom/yandex/metrica/impl/ob/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/yandex/metrica/impl/ob/J$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U1$f;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/U1$f;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method e()Lcom/yandex/metrica/impl/ob/c0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U1$f;->d:Lcom/yandex/metrica/impl/ob/U1$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->a:Lcom/yandex/metrica/impl/ob/c0;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/U1$e;->a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U1$f;->a:Lcom/yandex/metrica/impl/ob/c0;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ReportToSend{mReport="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->a:Lcom/yandex/metrica/impl/ob/c0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", mEnvironment="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", mCrash="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->c:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", mAction="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->d:Lcom/yandex/metrica/impl/ob/U1$e;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", mTrimmedFields="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/U1$f;->e:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x7d

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
