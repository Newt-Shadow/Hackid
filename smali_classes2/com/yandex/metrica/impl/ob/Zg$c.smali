.class Lcom/yandex/metrica/impl/ob/Zg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Zg;->a(Landroid/content/Context;)Lec/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Zg;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Zg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Zg$c;->a:Lcom/yandex/metrica/impl/ob/Zg;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCrashesDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Zg$c;->a:Lcom/yandex/metrica/impl/ob/Zg;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Zg;->a(Lcom/yandex/metrica/impl/ob/Zg;)Lcom/yandex/metrica/impl/ob/B0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "appmetrica_rtm_crashes"

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/B0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getCrashesTriggerDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Zg$c;->a:Lcom/yandex/metrica/impl/ob/Zg;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Zg;->a(Lcom/yandex/metrica/impl/ob/Zg;)Lcom/yandex/metrica/impl/ob/B0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "appmetrica_rtm_crashes_triggers"

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/B0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
