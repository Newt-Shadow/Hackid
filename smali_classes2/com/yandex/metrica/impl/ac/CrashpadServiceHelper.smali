.class public Lcom/yandex/metrica/impl/ac/CrashpadServiceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ac/CrashpadServiceHelper;->markCrashCompleted(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/yandex/metrica/impl/ac/CrashpadServiceHelper;->deleteCompletedReports()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static native cancelSetUpServiceHelper()V
.end method

.method public static native deleteCompletedReports()Z
.end method

.method private static native markCrashCompleted(Ljava/lang/String;)Z
.end method

.method public static native readCrash(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public static native readOldCrashes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public static native setUpServiceHelper(Ljava/lang/String;)V
.end method
