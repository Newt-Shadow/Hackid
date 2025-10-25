.class public abstract Ltd/k1;
.super Ltd/i0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltd/k1$a;
    }
.end annotation


# static fields
.field public static final c:Ltd/k1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ltd/k1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltd/k1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltd/k1;->c:Ltd/k1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltd/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
