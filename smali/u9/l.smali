.class final Lu9/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lu9/o;

.field private final b:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lu9/l;-><init>(Lu9/o;Z)V

    return-void
.end method

.method constructor <init>(Lu9/o;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lu9/l;->b:Z

    .line 4
    iput-object p1, p0, Lu9/l;->a:Lu9/o;

    return-void
.end method


# virtual methods
.method a()Lu9/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/l;->a:Lu9/o;

    .line 2
    .line 3
    return-object v0
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu9/l;->b:Z

    .line 2
    .line 3
    return v0
.end method
