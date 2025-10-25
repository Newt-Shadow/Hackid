.class Lcom/yandex/metrica/impl/ob/Ij$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Ij;->b()V
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
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ij$c;->a:Lcom/yandex/metrica/impl/ob/Ij;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$c;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ij;->b(Lcom/yandex/metrica/impl/ob/Ij;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$c;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/Ij;->a(Lcom/yandex/metrica/impl/ob/Ij;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$c;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ij;->d(Lcom/yandex/metrica/impl/ob/Ij;)Lcom/yandex/metrica/impl/ob/l3;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ij$c;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/l3;->a(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$c;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ij;->a(Lcom/yandex/metrica/impl/ob/Ij;)Landroid/telephony/PhoneStateListener;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$c;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ij;->c(Lcom/yandex/metrica/impl/ob/Ij;)Landroid/telephony/TelephonyManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ij$c;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ij;->c(Lcom/yandex/metrica/impl/ob/Ij;)Landroid/telephony/TelephonyManager;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ij$c;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Ij;->a(Lcom/yandex/metrica/impl/ob/Ij;)Landroid/telephony/PhoneStateListener;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :catchall_0
    :cond_0
    return-void
.end method
