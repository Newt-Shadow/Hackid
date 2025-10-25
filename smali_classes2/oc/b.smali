.class public final synthetic Loc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Loc/d;


# direct methods
.method public synthetic constructor <init>(Loc/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loc/b;->a:Loc/d;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Loc/b;->a:Loc/d;

    invoke-static {v0}, Loc/d;->a(Loc/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
