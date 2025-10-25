.class public final synthetic Ll5/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ll5/y;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Ll5/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll5/t;->a:Z

    iput-object p2, p0, Ll5/t;->b:Ljava/lang/String;

    iput-object p3, p0, Ll5/t;->c:Ll5/y;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ll5/t;->a:Z

    iget-object v1, p0, Ll5/t;->b:Ljava/lang/String;

    iget-object v2, p0, Ll5/t;->c:Ll5/y;

    invoke-static {v0, v1, v2}, Ll5/c0;->c(ZLjava/lang/String;Ll5/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
