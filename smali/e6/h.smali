.class public abstract Le6/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Le6/e;

.field private static volatile b:Le6/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le6/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le6/g;-><init>(Le6/f;)V

    sput-object v0, Le6/h;->a:Le6/e;

    sput-object v0, Le6/h;->b:Le6/e;

    return-void
.end method

.method public static a()Le6/e;
    .locals 1

    .line 1
    sget-object v0, Le6/h;->b:Le6/e;

    return-object v0
.end method
