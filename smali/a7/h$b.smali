.class La7/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ls6/v;


# direct methods
.method private constructor <init>(Ls6/v;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, La7/h$b;->a:Ls6/v;

    return-void
.end method

.method synthetic constructor <init>(Ls6/v;La7/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La7/h$b;-><init>(Ls6/v;)V

    return-void
.end method
