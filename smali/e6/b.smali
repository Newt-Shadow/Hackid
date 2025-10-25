.class public final Le6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:Le6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le6/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le6/b;-><init>(ZLe6/d;)V

    sput-object v0, Le6/b;->a:Le6/b;

    return-void
.end method

.method private constructor <init>(ZLe6/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZLe6/c;)Le6/b;
    .locals 0

    .line 1
    sget-object p0, Le6/b;->a:Le6/b;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method
