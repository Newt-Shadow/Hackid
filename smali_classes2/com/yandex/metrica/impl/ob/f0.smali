.class public Lcom/yandex/metrica/impl/ob/f0;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/f0$a;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/f0$a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/f0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/f0;->a:Lcom/yandex/metrica/impl/ob/f0$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-class v0, Lcom/yandex/metrica/impl/ob/fl;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f0;->a:Lcom/yandex/metrica/impl/ob/f0$a;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/f0$a;->a(ILandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
