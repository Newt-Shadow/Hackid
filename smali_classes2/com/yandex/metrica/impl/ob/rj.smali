.class public Lcom/yandex/metrica/impl/ob/rj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Yj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Yj<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ij;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ij;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/rj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/rj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Ij;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/rj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Ij;->f()Landroid/telephony/TelephonyManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/high16 v1, -0x80000000

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v1, v0

    .line 37
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    if-eq v0, v1, :cond_3

    .line 46
    .line 47
    if-eq v0, v2, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/4 v1, 0x3

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move v1, v2

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    :goto_2
    const/4 v1, 0x0

    .line 55
    :cond_5
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method
