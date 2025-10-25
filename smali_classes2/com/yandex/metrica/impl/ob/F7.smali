.class public Lcom/yandex/metrica/impl/ob/F7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ac/CrashpadServiceHelper;->deleteCompletedReports()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method
