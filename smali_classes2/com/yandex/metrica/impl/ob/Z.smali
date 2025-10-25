.class public final Lcom/yandex/metrica/impl/ob/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/W<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/X<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/E0;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/W;Lcom/yandex/metrica/impl/ob/X;Lcom/yandex/metrica/impl/ob/E0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/W<",
            "TT;>;",
            "Lcom/yandex/metrica/impl/ob/X<",
            "TT;>;",
            "Lcom/yandex/metrica/impl/ob/E0;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Z;->a:Lcom/yandex/metrica/impl/ob/W;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Z;->b:Lcom/yandex/metrica/impl/ob/X;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Z;->c:Lcom/yandex/metrica/impl/ob/E0;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Z;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Z;->a:Lcom/yandex/metrica/impl/ob/W;

    .line 3
    .line 4
    invoke-interface {v1, p2}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Z;->c:Lcom/yandex/metrica/impl/ob/E0;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/E0;->a(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Z;->b:Lcom/yandex/metrica/impl/ob/X;

    .line 16
    .line 17
    invoke-interface {p1, p2}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string p2, "Successfully saved "

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Z;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-array p2, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string p2, "Did not save "

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Z;->d:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p2, " because data is already present"

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-array p2, v0, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/h2;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    new-array p2, v0, [Ljava/lang/Object;

    .line 86
    .line 87
    const-string v0, "Unexpected error occurred"

    .line 88
    .line 89
    invoke-static {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    return-void
.end method
