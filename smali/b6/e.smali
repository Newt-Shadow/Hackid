.class public abstract Lb6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lb6/b;

.field private static volatile b:Lb6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb6/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb6/d;-><init>(Lb6/c;)V

    sput-object v0, Lb6/e;->a:Lb6/b;

    sput-object v0, Lb6/e;->b:Lb6/b;

    return-void
.end method

.method public static a()Lb6/b;
    .locals 1

    .line 1
    sget-object v0, Lb6/e;->b:Lb6/b;

    return-object v0
.end method
