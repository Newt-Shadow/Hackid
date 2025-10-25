.class Lio/appmetrica/analytics/gpllibrary/internal/GplLibraryWrapper$ClientProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/gpllibrary/internal/GplLibraryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientProvider"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/gpllibrary/internal/GplLibraryWrapper$ClientProvider;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method final a()Lg6/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/gpllibrary/internal/GplLibraryWrapper$ClientProvider;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lg6/d;->a(Landroid/content/Context;)Lg6/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
