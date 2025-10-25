.class public final Lad/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lad/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Lad/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lad/f$b;

    invoke-direct {v0}, Lad/f$b;-><init>()V

    sput-object v0, Lad/f$b;->a:Lad/f$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
