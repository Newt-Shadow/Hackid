.class Lcom/yandex/metrica/impl/ob/Ij$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Ij;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Ij;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ij;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ij$b;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$b;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ij;->b(Lcom/yandex/metrica/impl/ob/Ij;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$b;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/Ij;->a(Lcom/yandex/metrica/impl/ob/Ij;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$b;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ij;->a(Lcom/yandex/metrica/impl/ob/Ij;)Landroid/telephony/PhoneStateListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$b;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ij;->c(Lcom/yandex/metrica/impl/ob/Ij;)Landroid/telephony/TelephonyManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$b;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ij;->c(Lcom/yandex/metrica/impl/ob/Ij;)Landroid/telephony/TelephonyManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ij$b;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Ij;->a(Lcom/yandex/metrica/impl/ob/Ij;)Landroid/telephony/PhoneStateListener;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/16 v2, 0x100

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :catchall_0
    :cond_0
    return-void
.end method
